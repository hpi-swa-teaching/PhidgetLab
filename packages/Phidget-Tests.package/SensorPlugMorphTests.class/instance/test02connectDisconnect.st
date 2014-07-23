testing
test02connectDisconnect

	| connector |
	connector := PhdETSensorConnectorMorph new.
	plug plugTo: connector.
	
	[plug plugged = true] assert.
	[connector connected = true] assert.
	[plug connector = connector] assert.
	[connector plug = plug] assert.

	plug unplug.
	
	[plug plugged = false] assert.
	[connector connected = false] assert.
	[plug connector isNil] assert.
	[connector plug isNil] assert.

	