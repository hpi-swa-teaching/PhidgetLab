callbacks
callbackProcess: callbackName 
	"This method will be forked as an extra process for every callback that a phidget needs.
	The semaphores were previously initialised and registered as external objects.
	self class knownCallbacks lists all possible semaphore names.
	systemCallbacks contains message selectors to be sent."
	
	(semaphores at: callbackName) wait.
	
	[ self isOpen ] whileTrue: [
		(self class systemCallbacks includesKey: callbackName) 
			ifTrue: [ self perform: (self class systemCallbacks at: callbackName) ].
		(userProcessBlocks at: callbackName) value.
		
		(semaphores at: callbackName) wait
	].