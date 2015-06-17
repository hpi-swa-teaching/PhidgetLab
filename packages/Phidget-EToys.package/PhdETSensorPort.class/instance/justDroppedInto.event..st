updating
justDroppedInto: aMorph event: anEvent

	self topRendererOrSelf assuredPlayer allOpenViewers isEmpty 
		ifTrue: [(self presenter viewMorph: self) hideFlap].