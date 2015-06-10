animation
loadImage: aValue

	| value |
	value := self lastValue.
	value := (value - (value \\\ 125)).
	(aValue = #gray)
		ifTrue: [super loadImage: aValue]
		ifFalse: [super loadImage: value].