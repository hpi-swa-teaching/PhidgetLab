attached Phidgets list - callbacks
resetCallbacks

	self knownCallbacks do: [ :callbackName |
		Semaphores ifNotNil: [
			Smalltalk unregisterExternalObject: (Semaphores at: callbackName).
			(Semaphores at: callbackName) copy do: [ :process |
				process terminate ]
		].
	].
	SemaphoreIndices := nil.
	Semaphores := nil.
	
	