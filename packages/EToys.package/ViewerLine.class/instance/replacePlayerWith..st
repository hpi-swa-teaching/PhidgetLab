access
replacePlayerWith: aPlayer

	| tile |
	tile := self firstMorphBearingKedamaPlayer.
	tile ifNil: [^ self].
	(tile isMemberOf: TileMorph) ifFalse: [^ self].
	tile type = #objRef ifFalse: [^ self].
	tile referToSimilarObject: aPlayer.
