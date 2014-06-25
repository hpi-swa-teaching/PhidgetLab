animation
makeColored
	| anImage |
	anImage := (PhidgetImageLoader Instance load: self name asSymbol).
	self image: anImage.