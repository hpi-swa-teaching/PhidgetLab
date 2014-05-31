connecting
positionPlug

	plug position: self position + (((self width) - (plug width) -1 ) @ ((self height - plug height) / 2)).
	(plug owner = self) ifFalse:
		[self addMorph: plug].
	