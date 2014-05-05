primitives
primSetSemaphoreIndexCurrentChange: semaphoreIndex for: phidgetIdArray
	"registers the given Semaphore to be signaled when the current draw changes on the given Phidget.
	Return 1 if the operation succeeded, other values otherwise."
	
	<primitive: 'primSetSemaphoreIndexMotorCurrentChange' module: 'PhidgetPlugin'>
	^ nil