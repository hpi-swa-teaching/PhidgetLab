animation
loadImage: aColor

	(aColor = #gray)
		ifTrue: [super loadImage: aColor]
		ifFalse: [super loadImage: ''].