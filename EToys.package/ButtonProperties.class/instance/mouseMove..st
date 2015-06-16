events
mouseMove: evt

	actWhen == #mouseDown ifTrue: [^ self].
	self updateVisualState: evt.