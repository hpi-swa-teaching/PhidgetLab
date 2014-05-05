accessing
checkValid
	"Checks if the Phidgets has an valid id. if not, try to get a new one. if that fails return false. otherwise return true."

	self isValid ifFalse: [ | wasOpened |
		"this may have happened if a Phidget was created and then the image was saved,
		closed and reloaded. The hardware connection is broken."
		wasOpened := opened.
		self doPostCloseOperations.
		id := self getNewId.
		wasOpened ifTrue: [ self open ].
			
		"if we are still invald, something really went wrong. we need to make this instance fully invalid."
		self isValid ifFalse: [
			id := nil.
			self doPostCloseOperations.
			^ false
		].
	].
	
	^ true