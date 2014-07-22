animation
loadImage: aColor

	| anImage imageName |
	imageName := self name.
	(aColor = #gray)
		ifTrue: [imageName := imageName, #'_off'].
	anImage := (PhdETImageLoader default load: imageName).
	self image: anImage.