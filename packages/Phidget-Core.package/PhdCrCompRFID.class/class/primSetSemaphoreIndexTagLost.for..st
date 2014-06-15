primitives
primSetSemaphoreIndexTagLost: semaphoreIndex for: phidgetIdArray
	"registers the given semaphore to be signaled when a tag is lost by the given Phidget.
	Return 1 if the operation succeeded, other values otherwise."
	
	<primitive: 'primSetSemaphoreIndexRFIDTagLost' module: 'PhidgetPlugin'>
	^ nil