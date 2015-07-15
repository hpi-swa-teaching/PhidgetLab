connecting
positionPlug

	plug position: self position + (((self width - plug width) / 2) @ 3).
	(plug owner = self) ifFalse:
		[self addMorph: plug].
	overlay comeToFront.