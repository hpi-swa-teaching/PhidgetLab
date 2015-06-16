code generation
precedingTileType
	"Return the slot reference type of the preceding TileMorph in my owner."

	| row i tile |
	row := owner submorphs.
	i := row indexOf: self.
	((i > 1) and: [(tile := row at: i - 1) isKindOf: TileMorph])
		ifTrue: [^ tile type]
		ifFalse: [^ #unknown].
