animation
makeGray
	| anImage |
	anImage := (PhdImageLoader Instance load: self name,'_off' asSymbol).
	self image: anImage.