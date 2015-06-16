selection
selectedMorph: aMorph

	selectedMorph == aMorph ifTrue: [^self].
	self unhighlightSelection.
	selectedMorph := aMorph.
	self highlightSelection