animation
makeGray
	| anImage |
	self name ifNil: [^ self].
	anImage := (PhdImageLoader Instance load: self name,'_off' asSymbol).
	self image: anImage.