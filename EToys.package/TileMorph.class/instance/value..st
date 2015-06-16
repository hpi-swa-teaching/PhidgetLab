accessing
value: anObject
	"Set the receiver's 'value'.  For a literal tile, this is the literal itself; for operator tiles it is the operator.  Recompile any enclosing script."

	type == #literal
		ifTrue: [self literal: anObject]
		ifFalse: [self setOperatorAndUseArrows: anObject asString].
	self scriptEdited.
	self layoutChanged