event handling
wantsToBeDroppedInto: aMorph 
	(aMorph isKindOf: ProjectViewMorph)
		ifTrue: [^ false].
	^ super wantsToBeDroppedInto: aMorph