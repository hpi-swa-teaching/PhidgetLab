animation
makeGray
	| anImage |
	self name ifNil: [^ self].
	anImage := (PhidgetImageLoader Instance load: self name,'_off' asSymbol).
	self image: anImage.