animation
loadImage: aColor

	aColor == #gray ifTrue: [^super loadImage: aColor].
	super loadImage: ''.