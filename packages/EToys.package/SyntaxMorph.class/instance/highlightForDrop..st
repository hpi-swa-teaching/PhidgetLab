dropping/grabbing
highlightForDrop: evt

	(self wantsDroppedMorph: evt hand firstSubmorph event: evt)
		ifTrue: [self color: self dropColor].