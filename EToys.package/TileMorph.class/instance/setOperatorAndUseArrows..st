initialization
setOperatorAndUseArrows: aString
	"Set the operator as per aString, and add up/down arrows"

	type := #operator.
	operatorOrExpression := aString asSymbol.
 	self line1: (self currentVocabulary tileWordingForSelector: operatorOrExpression).
	self addArrows; updateLiteralLabel.
	submorphs last setBalloonText: (ScriptingSystem helpStringForOperator: operatorOrExpression)