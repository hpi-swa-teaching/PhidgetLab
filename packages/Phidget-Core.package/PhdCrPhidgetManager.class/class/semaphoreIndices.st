attached Phidgets list - callbacks
semaphoreIndices

	SemaphoreIndices ifNil: [
		SemaphoreIndices := Dictionary new.
		self knownCallbacks do: [ :callbackName | | index |
			index := Smalltalk registerExternalObject: (self semaphores at: callbackName).
			SemaphoreIndices add: callbackName -> index ].
		].
	
	^ SemaphoreIndices