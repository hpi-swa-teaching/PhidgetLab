animation
makeGray
	| anImage |
	anImage := (PhdETImageLoader default load: self name,'_off' asSymbol).
	self image: anImage.