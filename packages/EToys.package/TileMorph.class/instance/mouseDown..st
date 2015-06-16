event handling
mouseDown: evt 
	self setProperty: #previousLiteral toValue: self literalFromContents.
	self setProperty: #previousPoint toValue: evt position.
	self currentHand releaseKeyboardFocus.
	evt hand
		waitForClicksOrDrag: self
		event: evt
		selectors: {#mouseStillDown:. nil. nil. #startDrag:}
		threshold: 5.
	^ super mouseDown: evt