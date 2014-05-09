accessing
on: callbackName do: aBlock 
	"aBlock will be evaluated when the semaphore at callbackName is signaled.
	self class knownCallbacks lists all possible callback names."
	
	(self class knownCallbacks includes: callbackName) ifTrue: [
		userProcessBlocks 
			at: callbackName
			put: aBlock ].