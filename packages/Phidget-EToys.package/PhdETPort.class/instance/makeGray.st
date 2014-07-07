animation
makeGray
	| anImage |
	anImage := (PhdImageLoader default load: self name,'_off' asSymbol).
	self image: anImage.