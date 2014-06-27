animation
makeColored
	| anImage |
	anImage := (PhdImageLoader Instance load: self name asSymbol).
	self image: anImage.