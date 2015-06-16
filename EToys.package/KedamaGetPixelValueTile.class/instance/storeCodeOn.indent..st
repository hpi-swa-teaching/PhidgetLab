tile protocol
storeCodeOn: aStream indent: tabCount 
	"We have a hidden arg. Output two keywords with interspersed arguments."

	| parts |
	parts := operatorOrExpression keywords.	"getPatchValueIn:"
	aStream nextPutAll: parts first.
	aStream space.
	patchTile storeCodeOn: aStream indent: tabCount.
