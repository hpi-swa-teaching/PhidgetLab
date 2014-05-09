event handling
mouseDown: anEvent

	plugged ifFalse: 
		[^ super mouseDown: anEvent].
	
	^ self leaveConnector: anEvent
	