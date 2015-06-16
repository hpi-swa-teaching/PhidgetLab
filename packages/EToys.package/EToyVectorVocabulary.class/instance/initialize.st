initialization
initialize
	"Initialize the vocabulary"

	super initialize.
	self addFromTable: self eToyVectorTable.
	self vocabularyName: #Vector.
	self documentation: 'This vocabulary adds to the basic etoy experience an interpretation of "players are vectors", requested by Alan Kay and implemented by Ted Kaehler in summer 2001'.
