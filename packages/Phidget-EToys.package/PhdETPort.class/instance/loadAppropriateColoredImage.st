animation
loadAppropriateColoredImage

	| anImage |
	self name ifNil: [^ self].
	phidget getAttached 
		ifTrue: [anImage := (PhidgetImageLoader Instance load: self name asSymbol)]
		ifFalse: [anImage := (PhidgetImageLoader Instance load: self name, '_off' asSymbol)].
	self image: anImage.