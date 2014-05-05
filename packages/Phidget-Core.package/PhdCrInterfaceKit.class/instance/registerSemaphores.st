initialize-open-close
registerSemaphores
	"Register the semaphores, so that the PhidgetPlugin can signal them. Extends the superclasses' method by adding semaphores for #SensorChange, #InputChange and #OutputChange."
	
	| semaIndex |
	super registerSemaphores.
	
	semaIndex := Smalltalk registerExternalObject: (semaphores at: #SensorChange).
	PhdCrCompAnalogSensor
		primSetSemaphoreIndexChange: semaIndex
		for: id.
	semaIndex := Smalltalk registerExternalObject: (semaphores at: #InputChange).
	PhdCrCompDigitalInput
		primSetSemaphoreIndexChange: semaIndex
		for: id.
	semaIndex := Smalltalk registerExternalObject: (semaphores at: #OutputChange).
	PhdCrCompDigitalOutput
		primSetSemaphoreIndexChange: semaIndex
		for: id.