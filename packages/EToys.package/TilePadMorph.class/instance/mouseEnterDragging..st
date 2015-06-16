event handling
mouseEnterDragging: evt
	evt hand hasSubmorphs ifFalse:[^self].
	(self wantsDroppedMorph: evt hand firstSubmorph event: evt) ifTrue:[
		self firstSubmorph color: Color green.
	].
