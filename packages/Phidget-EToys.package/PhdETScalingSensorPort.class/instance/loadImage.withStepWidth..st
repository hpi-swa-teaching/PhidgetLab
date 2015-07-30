animation
loadImage: aValue withStepWidth: aNumber

	| value |
	aValue = 'gray' ifTrue: [^super loadImage: aValue].

	value := self lastValue.
	value = 1000 ifTrue: [value := value - 1].
	value := value - (value \\\ aNumber).
	super loadImage: value.