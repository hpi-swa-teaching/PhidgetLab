primitives
primSetSemaphoreIndexPositionChange: semaphoreIndex for: phidgetIdArray
	"registers the given Semaphore to be signaled when a motor changes its position.
	Return 1 if the operation succeeded, other values otherwise."
	
	<primitive: 'primSetSemaphoreIndexServoPositionChange' module: 'PhidgetPlugin'>
	^ nil