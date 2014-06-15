initialisation
initialize

	super initialize.
	
	self initializeRowsEmpty. "I don't have rows until I am attached."

	seperator := ' ** '.
	waitTime := 300.