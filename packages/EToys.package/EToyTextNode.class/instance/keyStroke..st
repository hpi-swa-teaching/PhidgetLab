event handling
keyStroke: evt

	(owner notNil and: [owner keyStroke: evt]) ifTrue: [^self].
	^super keyStroke: evt.