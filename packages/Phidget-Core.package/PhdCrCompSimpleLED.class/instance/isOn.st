accessing
isOn
	"Answer true if the phidget is attached and the LED is on, else false."
	
	phidget isAttached ifFalse: [ ^ false ].
	^ (self class primIsOn: phidget id) > 0