layout
addRow: aColorOrSymbol on: aNode

	| row |
	self addMorphBack: (row := self class row: aColorOrSymbol on: aNode).

"row setProperty: #howCreated toValue: thisContext longStack."

	^row
