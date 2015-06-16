mouse gestures
mouseUpTick: evt onItem: aMorph
	self removeAlarm: #offerTickingMenu:.
	aMorph color: (Color r: 0.767 g: 0.767 b: 1.0).
	(scriptInstantiation status == #ticking) ifTrue:[
		scriptInstantiation status: #paused. 
		aMorph color: (Color r: 1.0 g: 0.774 b: 0.774).
		aMorph isTicking: false.
	] ifFalse:[
		scriptInstantiation status: #ticking. 
		aMorph color: (Color r: 0.767 g: 0.767 b: 1.0).
		aMorph isTicking: true.
	].
	scriptInstantiation updateAllStatusMorphs.