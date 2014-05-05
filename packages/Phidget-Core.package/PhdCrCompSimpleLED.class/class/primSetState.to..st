primitives
primSetState: phidgetIdArray to: state
	"Set the state of the LED to true (state=1) or false (state=0).
	Return 1 if the operation succeeded, other values otherwise."
	
	<primitive: 'primSetSimpleLEDState' module: 'PhidgetPlugin'>
	^ nil