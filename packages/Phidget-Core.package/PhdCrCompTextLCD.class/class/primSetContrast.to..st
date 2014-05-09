primitives
primSetContrast: phidgetHandle to: aNumber
	"Sets the contrast of the given phidget to aNumber (0..255).
	Return 1 if the operation succeeded, other values otherwise."

	<primitive: 'primSetTextLCDContrast' module: 'PhidgetPlugin'>
	^ nil