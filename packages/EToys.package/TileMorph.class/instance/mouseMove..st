event handling
mouseMove: evt 
	self options
		ifNotNil: [^ self showOptions].
	(self hasProperty: #previousLiteral)
		ifFalse: [^ self].
	self currentHand releaseKeyboardFocus.
	"Once reviving the value at drag start"
	literal := self valueOfProperty: #previousLiteral.
	"Then applying delta"
	self arrowAction: (self valueOfProperty: #previousPoint) y - evt position y * self arrowDelta abs.
	^ super mouseMove: evt