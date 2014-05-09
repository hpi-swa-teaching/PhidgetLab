accessing
isCursorBlinking
	"Answer true if the phidget is attached and the cursor is blinking, else false."
	
	phidget isAttached ifFalse: [ ^ false ].
	^ (self class primCursorIsBlinking: phidget id) > 0