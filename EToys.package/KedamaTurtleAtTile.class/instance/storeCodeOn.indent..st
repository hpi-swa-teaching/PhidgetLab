tile protocol
storeCodeOn: aStream indent: tabCount 
	"We have a hidden arg. Output two keywords with interspersed arguments."

	| parts |
	parts := operatorOrExpression keywords.	"turtleAt:"
	aStream nextPutAll: parts first.
	aStream space.
	turtleTile storeCodeOn: aStream indent: tabCount.
