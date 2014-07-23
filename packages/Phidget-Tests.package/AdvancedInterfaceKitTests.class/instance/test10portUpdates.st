testing
test10portUpdates

	inputPort receivedUpdate: false.
	outputPort receivedUpdate: false.
	lsPort receivedUpdate: false.
	
	kit
		inputChange;
		outputChange;
		sensorChange.
		
	[inputPort receivedUpdate] assert.
	[outputPort receivedUpdate] assert.
	[lsPort receivedUpdate] assert.