initialization
setColorOnAttached: isAttached 
	isAttached
		ifTrue: [ self color: (Color r: 0.4 g: 0.7 b: 0.4) ]
		ifFalse: [ self color: Color gray ].
	