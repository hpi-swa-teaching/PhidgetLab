event handling
keyStroke: evt
	"A keystroke was hit while the receiver had keyboard focus.  Pass the keystroke on to my syntaxMorph, and also, if I have an event handler, pass it on to that handler"


	| sm |
	(sm := self syntaxMorph) ifNotNil: [sm keyStroke: evt].
	super keyStroke: evt