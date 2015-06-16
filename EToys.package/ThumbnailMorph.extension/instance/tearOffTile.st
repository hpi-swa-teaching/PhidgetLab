*Etoys-scripting
tearOffTile
	(objectToView isPlayerLike) ifTrue: [^ objectToView tearOffTileForSelf].

	objectToView ifNil: [^ nil].
	^ objectToView isMorph
		ifTrue:
			[objectToView]
		ifFalse:
			[objectToView costume]
