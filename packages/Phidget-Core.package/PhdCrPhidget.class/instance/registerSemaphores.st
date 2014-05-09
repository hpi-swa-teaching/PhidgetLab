private
registerSemaphores
	"Register the semaphores, so that the PhidgetPlugin can signal them. May be extended in subclasses."
	
	| semaIndex |
	semaIndex := Smalltalk registerExternalObject: (semaphores at: #Attach).
	self class
		primSetSemaphoreIndexAttach: semaIndex
		for: id.
	semaIndex := Smalltalk registerExternalObject: (semaphores at: #Detach).
	self class
		primSetSemaphoreIndexDetach: semaIndex
		for: id.
	semaIndex := Smalltalk registerExternalObject: (semaphores at: #Error).
	self class
		primSetSemaphoreIndexError: semaIndex
		for: id.