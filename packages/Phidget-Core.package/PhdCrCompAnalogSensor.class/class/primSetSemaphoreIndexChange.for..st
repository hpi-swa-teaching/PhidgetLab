primitives
primSetSemaphoreIndexChange: semaphoreIndex for: phidgetIdArray
	"registers the given Semaphore to be signaled when an sensor value changes on the given Phidget.
	Return 1 if the operation succeeded, other values otherwise."
	
	<primitive: 'primSetSemaphoreIndexAnalogSensorChange' module: 'PhidgetPlugin'>
	^ nil