other
unhibernate
	"I have been loaded as part of an ImageSegment.
	Make sure that I am fixed up properly."
	| fixMe |
	(fixMe := self valueOfProperty: #needsLayoutFixed ifAbsent: [ false ])
		ifTrue: [self removeProperty: #needsLayoutFixed ].

	self topEditor == self
		ifFalse: [^ self]. "Part of a compound test"

	self updateHeader.
	fixMe ifTrue: [ self fixLayout. self removeProperty: #needsLayoutFixed ].

	"Recreate my tiles from my method if i have new universal tiles."

	self world
		ifNil: [(playerScripted isNil
					or: [playerScripted isUniversalTiles not])
				ifTrue: [^ self]]
		ifNotNil: [Preferences universalTiles
				ifFalse: [^ self]].
	self insertUniversalTiles.
	self showingMethodPane: false