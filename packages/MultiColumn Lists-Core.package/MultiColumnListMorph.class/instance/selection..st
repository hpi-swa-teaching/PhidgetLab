selections
selection: object 
	| idx index |
	object ifNil: 
			[selectedMorph ifNil: [^self].
			selectedMorph isSelected: false.
			selectedMorph := nil.
			selection := nil.
			self changed].
	selectedMorph ifNotNil: [selectedMorph isSelected: false].
	specifications notNil ifTrue: [
		selection := object -> (idx := specifications displayIndexForObject: object).
		idx = 0 ifTrue: [^self].
		index := specifications originalIndexFor: idx.
		selectedMorph := list at: idx.
		selectedMorph isSelected: true.
		self changed.
		self moveSelectionIntoView.
		self informNewSelection: index
		]
	ifFalse: [
		selection := object -> (origObjects indexOf: object).
		selection value = 0 ifTrue: [^self selection: nil].
		idx := selection value.
		(sort notNil or: [filter notEmpty]) 
			ifTrue: 
				[idx := sortXRef indexOf: idx.
				idx = 0 ifTrue: [^self]].
		selectedMorph := list at: idx.
		selectedMorph isSelected: true.
		self changed.
		self moveSelectionIntoView.
		self informNewSelection: selection value
		].
