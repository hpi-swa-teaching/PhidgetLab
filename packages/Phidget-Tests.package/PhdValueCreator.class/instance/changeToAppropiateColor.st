mocking
changeToAppropiateColor
	self color = Color gray
		ifTrue: [self color: Color green]
		ifFalse: [self color: Color gray].