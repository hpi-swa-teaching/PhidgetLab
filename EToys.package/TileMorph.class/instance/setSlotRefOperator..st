initialization
setSlotRefOperator: getter
	"getter represents the name of a slot that the receiver is to represent; configure the receiver to serve thi duty, and set upthe wording on the tile appropriately"

	type := #operator.
	operatorOrExpression := getter asSymbol.
	self line1:  (self currentEToyVocabulary tileWordingForSelector: operatorOrExpression).
	self updateLiteralLabel