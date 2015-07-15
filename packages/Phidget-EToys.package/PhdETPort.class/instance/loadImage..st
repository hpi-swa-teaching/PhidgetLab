animation
loadImage: aValue

	| anImage imageName |
	imageName := self name.

	aValue == #gray
		ifTrue: [imageName := imageName, #'_off']
		ifFalse: [imageName := imageName,  aValue asString].

	anImage := (PhdETImageLoader default load: imageName).
	self image: anImage.