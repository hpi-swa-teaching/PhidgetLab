animation
loadImage: aValue

	aValue == 'gray' ifTrue: [^super loadImage: aValue].
	super loadImage: ''.