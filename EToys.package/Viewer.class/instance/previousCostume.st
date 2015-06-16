commands
previousCostume
	| aList aPlayer itsCurrent anIndex newIndex |
	aList := (aPlayer := scriptedPlayer) availableCostumesForArrows.
	aList isEmptyOrNil ifTrue: [^ Beeper beep].
	itsCurrent := aPlayer costume renderedMorph.
	anIndex := aList indexOf: itsCurrent ifAbsent: [nil].
	newIndex := anIndex
		ifNil:		[aList size]
		ifNotNil:	[anIndex - 1].
	newIndex < 1 ifTrue: [newIndex := aList size].
	aPlayer renderedCostume: (aList at: newIndex).
	self presenter ifNotNil: [self presenter updateViewer: self]