primitives
primSetSemaphoreIndexTagFound: semaphoreIndex for: phidgetIdArray
	"registers the given semaphore to be signaled when a tag is found by the given Phidget.
	Return 1 if the operation succeeded, other values otherwise."
	
	<primitive: 'primSetSemaphoreIndexRFIDTagFound' module: 'PhidgetPlugin'>
	^ nil