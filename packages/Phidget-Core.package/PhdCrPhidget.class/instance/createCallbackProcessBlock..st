callbacks
createCallbackProcessBlock: callbackName
	"Create a callback process block to be forked.
	Must be swapped out to work in loops."

	^ [ self callbackProcess: callbackName ]