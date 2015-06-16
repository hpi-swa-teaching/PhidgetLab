events
mouseDown: evt

	self displayCostume: #mouseDown.
	mouseDownTime := Time millisecondClockValue.
	nextTimeToFire := nil.
	delayBetweenFirings ifNotNil: [
		nextTimeToFire := mouseDownTime + delayBetweenFirings.
	].
	self wantsRolloverIndicator ifTrue: [
		visibleMorph 
			addMouseActionIndicatorsWidth: mouseDownHaloWidth 
			color: mouseDownHaloColor.
	].
	actWhen == #mouseDown ifFalse: [^self].
	(visibleMorph containsPoint: evt cursorPoint) ifFalse: [^self].
	self doButtonAction: evt.

"=====

	aMorph .

	now := Time millisecondClockValue.
	oldColor := color. 
	actWhen == #buttonDown
		ifTrue: [self doButtonAction]
		ifFalse: [	self updateVisualState: evt; refreshWorld].
	dt := Time millisecondClockValue - now max: 0.
	dt < 200 ifTrue: [(Delay forMilliseconds: 200-dt) wait].
	self mouseStillDown: evt.
====="