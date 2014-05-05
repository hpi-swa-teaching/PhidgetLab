callbacks
forkCallbacks
	"Fork the callback processes."
	
	self class knownCallbacks do: [ :callbackName |
		(self createCallbackProcessBlock: callbackName) fork ].