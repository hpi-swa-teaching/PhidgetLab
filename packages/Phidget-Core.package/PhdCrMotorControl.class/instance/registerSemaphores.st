initialize-open-close
registerSemaphores
	"Register the semaphores, so that the PhidgetPlugin can signal them. Extends the superclasses' method by adding semaphores for #VelocityChange, #CurrentChange and #InputChange"
	
	| semaIndex |
	super registerSemaphores.
	
	semaIndex := Smalltalk registerExternalObject: (semaphores at: #VelocityChange).
	PhdCrCompMotor
		primSetSemaphoreIndexVelocityChange: semaIndex
		for: id.
	semaIndex := Smalltalk registerExternalObject: (semaphores at: #CurrentChange).
	PhdCrCompMotor
		primSetSemaphoreIndexCurrentChange: semaIndex
		for: id.
	semaIndex := Smalltalk registerExternalObject: (semaphores at: #InputChange).
	PhdCrCompDigitalInput
		primSetSemaphoreIndexChange: semaIndex
		for: id.