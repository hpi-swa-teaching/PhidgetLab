initialization
setColorOnAttached: isAttached 

	| green |
	green := Color r: 0.4 g: 0.7 b: 0.4.
	isAttached
		ifTrue: [self color: green]
		ifFalse: [self color: Color gray].
	