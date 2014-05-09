primitives
primIsStopped: phidgetIdArray at: index
	"Returns 1 if the motor on the given index is stopped and that there are no commands in the pipeline
to the servo, or other values otherwise."

	<primitive: 'primIsAdvancedServoStopped' module: 'PhidgetPlugin'>
	^ nil