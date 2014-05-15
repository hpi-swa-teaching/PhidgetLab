initialization
createVelocityBar

	^  PhdETBarMorph new
		barColor: Color yellow darker;
		backColor: (Color white alpha: 0.4);
		height: 20;
		width: 60;
		minValue: -100;
		maxValue: 100;
		updateStatus;
		yourself.