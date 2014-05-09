attached Phidgets list - callbacks
attachedDevicesProcess: callbackName event: eventSelector
	"This method will be forked as an extra process for every callback that a phidget manager needs.
	The semaphores were previously initialised and registered as external objects.
	self class knownCallbacks lists all possible semaphore names."
	
	(self semaphores at: callbackName) wait.
	
	[true] whileTrue: [
		self triggerEvent: eventSelector.
		(self semaphores at: callbackName) wait
	].