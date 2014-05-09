initialize-open-close
registerSemaphores
	"Register the semaphores, so that the PhidgetPlugin can signal them. Extends the superclasses' method by adding semaphores for #OutputChange, #TagFound and #TagLost."
	
	| semaIndex |
	super registerSemaphores.
	
	semaIndex := Smalltalk registerExternalObject: (semaphores at: #OutputChange).
	PhdCrCompDigitalOutput
		primSetSemaphoreIndexChange: semaIndex
		for: id.
	semaIndex := Smalltalk registerExternalObject: (semaphores at: #TagFound).
	PhdCrCompRFID
		primSetSemaphoreIndexTagFound: semaIndex
		for: id.
	semaIndex := Smalltalk registerExternalObject: (semaphores at: #TagLost).
	PhdCrCompRFID
		primSetSemaphoreIndexTagLost: semaIndex
		for: id.