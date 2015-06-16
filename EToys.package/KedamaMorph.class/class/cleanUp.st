class initialization
cleanUp
"
	self cleanUp
"
	self allInstancesDo: [:e | e cleanUp].
