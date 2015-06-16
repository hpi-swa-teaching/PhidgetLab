event handling
mouseStillDown: evt 
	"See if arrows are being pressed and call arrowAction:..."
	| aPoint |
	upArrow
		ifNil: [^ super mouseStillDown: evt].
	aPoint := evt cursorPoint.
	(upArrow containsPoint: aPoint)
		ifTrue: [^ self
				variableDelay: [self arrowAction: self arrowDelta]].
	(downArrow containsPoint: aPoint)
		ifTrue: [^ self
				variableDelay: [self arrowAction: self arrowDelta negated]].
	self options
		ifNotNil: [^ self showOptions]