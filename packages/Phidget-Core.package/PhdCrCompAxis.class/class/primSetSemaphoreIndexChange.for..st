primitives
primSetSemaphoreIndexChange: semaphoreIndex for: phidgetIdArray
	"registers the given Semaphore to be signaled when an acceleration occurs on the given Phidget.
	Return 1 if the operation succeeded, other values otherwise."
	
	<primitive: 'primSetSemaphoreIndexAxisChange' module: 'PhidgetPlugin'>
	^ nil