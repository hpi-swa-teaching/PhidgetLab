accessing
isBacklightOn
	"Answer true if the phidget is attached and the backlight is on, else false."
	
	phidget isAttached ifFalse: [ ^ false ].
	^ (self class primBacklightIsOn: phidget id) > 0