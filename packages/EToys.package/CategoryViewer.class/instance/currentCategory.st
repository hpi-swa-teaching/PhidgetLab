categories
currentCategory
	"Answer the symbol representing the receiver's currently-selected category"

	| current |
	current := namePane renderedMorph firstSubmorph contents.
	^ current ifNotNil: [current asSymbol] ifNil: [#basic]