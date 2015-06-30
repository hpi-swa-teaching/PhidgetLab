animation
loadImage: aValue

	| value |
	aValue == #gray ifTrue: [^super loadImage: aValue].

	value := self lastValue.
	(value = 1000) ifTrue: [value := value - 1].
	value := (value - (value \\\ 125)).
	super loadImage: value.