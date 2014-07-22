animation
makeColored
	| anImage |
	anImage := (PhdETImageLoader default load: self name asSymbol).
	self image: anImage.