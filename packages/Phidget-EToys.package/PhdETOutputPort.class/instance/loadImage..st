as yet unclassified
loadImage: aValue

	aValue = 'gray' ifTrue: [^super loadImage: aValue].
	super loadImage: ''.