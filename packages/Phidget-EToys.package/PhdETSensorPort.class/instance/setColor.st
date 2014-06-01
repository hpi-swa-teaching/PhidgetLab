initialization
setColor 
	phidget getAttached 
		ifTrue: [self color: Color yellow lighter]
		ifFalse: [self color: Color gray].
	