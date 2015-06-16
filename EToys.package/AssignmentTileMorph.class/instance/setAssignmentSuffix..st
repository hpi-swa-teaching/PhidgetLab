initialization
setAssignmentSuffix: aString
	assignmentSuffix := aString.
	self computeOperatorOrExpression.
	type := #operator.
 	self line1: (ScriptingSystem wordingForOperator: operatorOrExpression).
	self addArrowsIfAppropriate; updateLiteralLabel