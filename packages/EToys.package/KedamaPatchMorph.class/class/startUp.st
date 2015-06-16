class initialization
startUp
"
	self startUp
"
	self allInstancesDo: [:e | e startUp].
