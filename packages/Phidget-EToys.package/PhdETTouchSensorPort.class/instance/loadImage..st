animation
loadImage: aColor

	| value |
	value := self lastValue.
	value := (value - (value \\\ 500)).
	(aColor = #gray)
		ifTrue: [super loadImage: aColor]
		ifFalse: [super loadImage: value].