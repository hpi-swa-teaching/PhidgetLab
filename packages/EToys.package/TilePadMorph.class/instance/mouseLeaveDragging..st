event handling
mouseLeaveDragging: evt
	evt hand hasSubmorphs ifFalse:[^self].
	(self wantsDroppedMorph: evt hand firstSubmorph event: evt) ifTrue:[
		self firstSubmorph useUniformTileColor.
	].