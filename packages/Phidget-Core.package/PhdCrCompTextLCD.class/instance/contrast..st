accessing
contrast: anInteger
	"Sets the contrast of the display to aNumber (0..255).
	Return true if the operation suceeded, false otherwise."
	
	phidget isAttached ifFalse: [ ^ false ].
	anInteger < 0 | anInteger > 255 ifTrue: [ ^ false ].
	^ (self class
		primSetContrast: phidget id
		to: anInteger) == 1