accessing
contrast
	"Gets the contrast of the display (0..255).
	if there was an error, return 0."
	
	phidget isAttached ifFalse: [ ^ 0 ].
	^ self class primGetContrast: phidget id