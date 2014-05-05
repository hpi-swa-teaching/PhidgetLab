initialize-open-close
registerSemaphores
	"Register the semaphores, so that the PhidgetPlugin can signal them. Extends the superclasses' method by adding a semaphore for #PositionChange."
	
	| semaIndex |
	super registerSemaphores.
	
	semaIndex := Smalltalk registerExternalObject: (semaphores at: #PositionChange).
	PhdCrCompServoMotor
		primSetSemaphoreIndexPositionChange: semaIndex
		for: id.