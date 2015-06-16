commands
nextCostume
	| aList aPlayer itsCurrent anIndex newIndex |
	aList := (aPlayer := scriptedPlayer) availableCostumesForArrows.
	aList isEmptyOrNil ifTrue: [^ Beeper beep].
	itsCurrent := aPlayer costume renderedMorph.
	anIndex := aList indexOf: itsCurrent ifAbsent: [nil].
	newIndex := anIndex
		ifNil:		[1]
		ifNotNil:	[anIndex + 1].
	newIndex > aList size ifTrue: [newIndex := 1].
	aPlayer renderedCostume: (aList at: newIndex).
	self presenter ifNotNil: [self presenter updateViewer: self]