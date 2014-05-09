as yet unclassified
testDeletePort

	| portNumber |
		
	portNumber := lsPort portNumber.
	self should: [(kit sensorConnectors at: portNumber) connected = true].
	self should: [lsPort connected = true].
	
	lsPort delete.
	
	self should: [(kit sensorConnectors at: portNumber) connected = false].
	
	kit delete.
	