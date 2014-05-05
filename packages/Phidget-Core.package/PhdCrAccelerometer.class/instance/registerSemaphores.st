initialize-open-close
registerSemaphores
	"Register the semaphores, so that the PhidgetPlugin can signal them. Extends the superclasses' method by adding semaphores for
	#AxisChange."
	
	| semaIndex |
	super registerSemaphores.
	
	semaIndex := Smalltalk registerExternalObject: (semaphores at: #AccelerationChange).
	PhdCrCompAxis
		primSetSemaphoreIndexChange: semaIndex
		for: id.