initialize-open-close
registerSemaphores
	"Register the semaphores, so that the PhidgetPlugin can signal them. Extends the superclasses' method by adding a semaphore for #VelocityChange and #CurrentChange."
	
	| semaIndex |
	super registerSemaphores.
	
	semaIndex := Smalltalk registerExternalObject: (semaphores at: #VelocityChange).
	PhdCrCompAdvancedServoMotor
		primSetSemaphoreIndexVelocityChange: semaIndex
		for: id.
	semaIndex := Smalltalk registerExternalObject: (semaphores at: #CurrentChange).
	PhdCrCompAdvancedServoMotor
		primSetSemaphoreIndexCurrentChange: semaIndex
		for: id.