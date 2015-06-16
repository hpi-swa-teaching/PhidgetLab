code generation
storeCodeOn: aStream indent: tabCount 
	"We have a hidden arg. Output two keywords with interspersed arguments."

	| parts |
	parts := operatorOrExpression keywords.	"color:sees:"
	^aStream
		nextPutAll: (parts first);
		space;
		nextPutAll: colorSwatch color printString;
		space;
		nextPutAll: (parts second)