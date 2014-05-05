attached Phidgets list - callbacks
forkAttachedDevicesProcesses

	self knownCallbacks do: [ :callbackName |
		(self createAttachedDevicesProcessBlock: callbackName) fork ].