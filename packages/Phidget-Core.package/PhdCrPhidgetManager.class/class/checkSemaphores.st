attached Phidgets list - callbacks
checkSemaphores
	"check that the semaphores are registered in the plugin."
	
	| externalObjects included |
	externalObjects := Smalltalk specialObjectsArray at: 39.
	
	included := Semaphores
		ifNil: [ false ]
		ifNotNil: [
			externalObjects includesAllOf: {
				Semaphores at: #Attach.
				Semaphores at: #Detach.
				Semaphores at: #Error.
			}.
		].
	
	included ifFalse: [ self resetCallbacks ].
	
	self primSetSemaphoreIndexAttach: (self semaphoreIndices at: #Attach).
	self primSetSemaphoreIndexDetach: (self semaphoreIndices at: #Detach).
	self primSetSemaphoreIndexError: (self semaphoreIndices at: #Error).