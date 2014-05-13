accessing
sizes
	sizes size = self sizesSize ifFalse: [
		|newSizes|
		newSizes _ OrderedCollection new: self sizesSize.
		showScreen doWithIndex: [:bool :idx| bool ifTrue: [newSizes addLast: (sizes at: idx)]].
		sizes _ newSizes.
		].
	^sizes
