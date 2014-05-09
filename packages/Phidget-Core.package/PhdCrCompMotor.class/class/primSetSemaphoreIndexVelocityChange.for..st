primitives
primSetSemaphoreIndexVelocityChange: semaphoreIndex for: phidgetIdArray
	"registers the given Semaphore to be signaled when the velocity changes on the given Phidget.
	Return 1 if the operation succeeded, other values otherwise."
	
	<primitive: 'primSetSemaphoreIndexMotorVelocityChange' module: 'PhidgetPlugin'>
	^ nil