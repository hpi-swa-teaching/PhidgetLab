animation
makeColored
	| anImage |
	anImage := (PhdImageLoader default load: self name asSymbol).
	self image: anImage.