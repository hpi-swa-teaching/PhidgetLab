animation
makeColored
	| anImage |
	self name ifNil: [^ self].
	anImage := (PhdImageLoader Instance load: self name asSymbol).
	self image: anImage.