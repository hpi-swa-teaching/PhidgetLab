connecting
positionPlug

	plug position: self position + (1 @ ((self height - plug height) / 2)).
	(plug owner = self) ifFalse:
		[self addMorph: plug].