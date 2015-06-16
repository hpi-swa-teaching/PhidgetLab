accessing
value
	^ type == #literal
		ifTrue: [literal]
		ifFalse: [type == #objRef
				ifTrue: [actualObject]
				ifFalse: [operatorOrExpression]]