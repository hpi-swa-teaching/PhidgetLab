initialization
setColorOnAttached: isAttached 
	isAttached 
		ifTrue: [ self pin borderColor: Color yellow ]
		ifFalse: [ self pin borderColor: Color gray ].