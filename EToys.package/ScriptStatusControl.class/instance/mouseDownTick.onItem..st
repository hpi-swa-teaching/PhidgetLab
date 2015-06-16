mouse gestures
mouseDownTick: evt onItem: aMorph
	aMorph color: Color veryLightGray.
	self addAlarm: #offerTickingMenu: with: aMorph after: 1000.