initialization
initialize

	slaveValue := 500.
	masterValue := 500.
	super initialize.
	
	self 
		createAndAddSlave;
		createAndAddSeparatorString.