animation
loadImage: aColor

	| value |
	aColor == #gray ifTrue: [^super loadImage: aColor].

	value := self lastValue.
	(value = 1000) ifTrue: [value := value - 1].
	value := (value - (value \\\ 500)).
	super loadImage: value.