accessing
color
	self backgroundColor = Color transparent ifTrue: [^color].
	^color orColorUnlike: self backgroundColor