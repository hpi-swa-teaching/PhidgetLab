misc
basicWidth
	"Provide a nominal minimum, exclusive of arrows and independent of label width"

	^ operatorOrExpression
		ifNotNil:
			[3]
		ifNil:
			[18]