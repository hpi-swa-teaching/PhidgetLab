access
replacePlayerInReadoutWith: aPlayer 

	| tile |
	tile := self firstMorphBearingKedamaPlayer.
	tile ifNil: [^ self].
	(tile isMemberOf: TileMorph) ifFalse: [^ self].
	tile type = #objRef ifFalse: [^ self].
	tile referToSimilarObject: aPlayer.

	self allMorphsDo: [:e |
		((e isMemberOf: UpdatingStringMorph) or: [e isMemberOf: UpdatingRectangleMorph]) ifTrue: [
			e target isPlayerLike ifTrue: [
				e target: aPlayer
			].
		].
	].