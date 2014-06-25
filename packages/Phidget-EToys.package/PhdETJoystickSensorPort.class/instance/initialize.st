initialization
initialize

	self slaveValue: 500.
	self masterValue: 500.
	super initialize.
	
	self 
		createAndAddSlave;
		createAndAddSeparatorString.