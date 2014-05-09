primitives
primSetValue: phidgetIdArray at: index to: value
	"Sets the output value (0/1 = off/on) at the digital output with the given index to the given value.
	Return 1 if the operation succeeded, other values otherwise."

	<primitive: 'primSetDigitalOutputValue' module: 'PhidgetPlugin'>
	^ nil