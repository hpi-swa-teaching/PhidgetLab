tile protocol
setAssignmentSuffix: aString
	assignmentSuffix := aString.
	self computeOperatorOrExpression.
	type := #operator.
 	self addArrowsIfAppropriate; updateLiteralLabel