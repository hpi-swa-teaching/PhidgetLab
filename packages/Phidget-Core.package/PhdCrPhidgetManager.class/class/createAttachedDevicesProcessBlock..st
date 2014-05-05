attached Phidgets list - callbacks
createAttachedDevicesProcessBlock: callbackName
	"Create a callback process block to be forked.
	Must be swapped out to work in loops."

	^ [ self
			attachedDevicesProcess: callbackName
			event: (callbackName , #Event) asSymbol ]