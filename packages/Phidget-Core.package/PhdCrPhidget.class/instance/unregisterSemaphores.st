private
unregisterSemaphores
	"Unregister the semaphores which were previously registered with 'self registerSemaphores'."

	self opened: false.
	semaphores do: [ :sema |
		"If I am not opened and the semaphore is signaled, the callback process will terminate."
		sema signal.
		
		Smalltalk unregisterExternalObject: sema
	].