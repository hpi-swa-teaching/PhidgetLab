initialization
setColor 
	phidget getAttached 
		ifTrue: [	self color: Color blue muchLighter]
		ifFalse: [self color: Color gray].