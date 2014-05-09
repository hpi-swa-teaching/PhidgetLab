attached Phidgets list - callbacks
semaphores

	Semaphores ifNil: [
		Semaphores := Dictionary new.
		
		"Create the semaphores and fork processes waiting for them. The processes will trigger appropriate events."
		self knownCallbacks do: [ :callbackName |
			Semaphores add: callbackName -> Semaphore new ].
		self forkAttachedDevicesProcesses.
	].
	
	^ Semaphores