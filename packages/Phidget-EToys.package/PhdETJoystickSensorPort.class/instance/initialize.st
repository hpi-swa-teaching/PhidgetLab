initialization
initialize

	super initialize.
	self 
		createAndAddSlave;
		createAndAddSeparatorString;
		slaveValue: 500;
		masterValue: 500.