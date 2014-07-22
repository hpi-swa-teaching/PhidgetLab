animation
changeColorAccordingTo: isAttached

	isAttached 
		ifTrue: [self loadImage: #colored]
		ifFalse: [self loadImage: #gray].