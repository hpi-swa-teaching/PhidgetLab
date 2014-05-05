primitives
primSetSemaphoreIndexAttach: semaphoreIndex
	"registers the given Semaphore to be signaled when a phidget is attached.
	Return 1 if the operation succeeded, or other values otherwise."
	
	<primitive: 'primSetPMSemaphoreIndexAttach' module: 'PhidgetPlugin'>
	^ nil