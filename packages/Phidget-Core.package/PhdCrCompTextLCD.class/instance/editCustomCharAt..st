accessing
editCustomCharAt: index
	"Edit the custom character at the given index using a CustomCharPicker. Stores the new value when clicking ok."
	
	| picker cChar |
	phidget isAttached ifFalse: [ ^ self ].
	
	cChar := self getCustomCharAt: index.
	picker := PhdCrCustomCharPicker newWithChar: cChar andIndex: index.
	
	picker
		when: #characterPicked
		send: #setCustomCharAt:to:
		to: self;
		openInHand.