selections
moveSelectionIntoView
	| idx min |
	list ifEmpty: [^self].
	selection ifNil: [^self].
	idx := selection value.
	(sort notNil or: [filter notEmpty]) 
		ifTrue: 
			[idx := sortXRef indexOf: idx.
			idx = 0 ifTrue: [^self].
			^scrollBar setValue: (idx / sortXRef size) asFloat].
	min := bounds height // (list first height).
	idx <= min ifTrue: [^scrollBar setValue: 0].
	idx > (list size - min) ifTrue: [^scrollBar setValue: 1].
	scrollBar setValue: (idx / list size) asFloat