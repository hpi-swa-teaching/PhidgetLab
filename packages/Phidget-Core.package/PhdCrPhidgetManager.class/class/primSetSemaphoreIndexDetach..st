primitives
primSetSemaphoreIndexDetach: semaphoreIndex
	"registers the given Semaphore to be signaled when a phidget is detached.
	Return 1 if the operation succeeded, or other values otherwise."
	
	<primitive: 'primSetPMSemaphoreIndexDetach' module: 'PhidgetPlugin'>
	^ nil