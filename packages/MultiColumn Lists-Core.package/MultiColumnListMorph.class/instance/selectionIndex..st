selections
selectionIndex: index 
	| idx |
	(index isNil or: [index = 0]) 
		ifTrue: 
			[selectedMorph ifNil: [^self].
			selectedMorph isSelected: false.
			selectedMorph := nil.
			selection := nil.
			^self changed].
	selectedMorph ifNotNil: [[selectedMorph isSelected: false] on: Error do: []].
	specifications notNil ifTrue: [
		idx := [specifications originalIndexFor: index] on: Error do: [nil].
		idx ifNil: [^self selectionIndex: idx].
		selection := Association key: idx value: index.
		idx = 0 ifTrue: [^self].
		selectedMorph := list at: index.
		selectedMorph isSelected: true.
		self changed.
		self moveSelectionIntoView.
		self informNewSelection: idx
		]
	ifFalse: [
		selection := Association key: (origObjects at: index) value: index.
		idx := index.
		(sort notNil or: [filter notEmpty]) 
			ifTrue: 
				[idx := sortXRef indexOf: idx.
				idx = 0 ifTrue: [^self]].
		selectedMorph := list at: index.
		selectedMorph isSelected: true.
		self changed.
		self moveSelectionIntoView.
		self informNewSelection: index
		].