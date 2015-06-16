node types
isLeafTile
	self hasSubmorphs ifFalse: [^false].
	(self firstSubmorph isSyntaxMorph) ifTrue: [^false].
	(self firstSubmorph isMemberOf: Morph) ifTrue: [^false].
	^true