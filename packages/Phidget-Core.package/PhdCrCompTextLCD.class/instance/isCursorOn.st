accessing
isCursorOn
	"Answer true if the phidget is attached and the cursor is on, else false."
	
	phidget isAttached ifFalse: [ ^ false ].
	^ (self class primCursorIsOn: phidget id) > 0