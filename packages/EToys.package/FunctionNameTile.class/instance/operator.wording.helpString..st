initialization
operator: anOperator wording: aWording helpString: aHelpString
	"Set the operator as per aString, and add up/down arrows"

	type := #operator.
	operatorOrExpression := anOperator asSymbol.
	operatorOrExpression = #grouped
		ifTrue:
			[self line1: ' ']
		ifFalse:
			[self line1: aWording].
	self addArrows..
	aHelpString ifNotNil: [submorphs last setBalloonText: aHelpString]