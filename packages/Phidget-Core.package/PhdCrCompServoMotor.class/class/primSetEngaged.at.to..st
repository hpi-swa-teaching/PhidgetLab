primitives
primSetEngaged: phidgetIdArray at: index to: value
	"Sets the engagement state (0/1 = off/on) of the motor at the given index.
	Return 1 if the operation succeeded, other values otherwise."

	<primitive: 'primSetServoEngaged' module: 'PhidgetPlugin'>
	^ nil