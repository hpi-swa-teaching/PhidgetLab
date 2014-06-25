animation
makeColored
	| anImage |
	self name ifNil: [^ self].
	anImage := (PhidgetImageLoader Instance load: self name asSymbol).
	self image: anImage.