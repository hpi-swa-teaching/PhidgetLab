animation
makeGray
	| anImage |
	anImage := (PhidgetImageLoader Instance load: self name,'_off' asSymbol).
	self image: anImage.