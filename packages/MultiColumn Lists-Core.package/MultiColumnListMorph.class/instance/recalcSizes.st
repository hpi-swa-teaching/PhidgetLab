drawing
recalcSizes
	| maxSizes h loc w |
	(header isNil and: [list isEmpty]) 
		ifTrue: 
			[scroller removeAllMorphs.
			self setScrollDeltas.
			currentTop := 1.
			^self changed].
	showScreen ifNil: [
		showScreen := (Array streamContents: [:strm| header notNil
			ifTrue: [header asArray doWithIndex: [:x :idx| strm nextPut: idx]]
			ifFalse: [list first asArray doWithIndex: [:x :idx| strm nextPut: idx]]
			]).
		].
	header isNil 
		ifTrue: 
			[list isEmpty ifTrue: [^nil].
			maxSizes := Array new: list first size.
			maxSizes atAllPut: 0]
		ifFalse: [
			header showOnly: showScreen.
			maxSizes := header rawSizes.
			].
	list do: 
			[:ssm | 
			ssm showOnly: showScreen.
			ssm rawSizes 
				withIndexDo: [:sz :idx | maxSizes at: idx put: (sz max: (maxSizes at: idx))]].
	list do: [:ssm | ssm sizes: maxSizes].
	header ifNotNil: [header sizes: maxSizes].
	w := header isNil ifTrue: [list first width] ifFalse: [header width].
	"Lay items out vertically and install them in the scroller"
	h := list isEmpty 
		ifTrue: [header neededHeight]
		ifFalse: [list first neededHeight].
	loc := 0 @ 0.
	(header notNil and: [header scrolls]) 
		ifTrue: 
			[header bounds: (loc extent: w @ header neededHeight).
			loc := loc + (0 @ header neededHeight)].
	list do: 
			[:m | 
			m
				bounds: (loc extent: w @ h);
				displayBounds: (0 @ 0 corner: bounds extent).
			loc := loc + (0 @ h)].
	scroller removeAllMorphs.
	scroller layoutPolicy: (StackedStringListLayout height: h width: w).
	(header isNil or: [header scrolls not]) 
		ifTrue: [scroller addAllMorphs: list]
		ifFalse: [scroller addAllMorphs: (list copyWithFirst: header)].
	header changed.
	self setScrollDeltas.
	scrollBar setValue: 0.0.