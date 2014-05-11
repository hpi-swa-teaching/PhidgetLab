as yet unclassified
testChangePortNumber

	| portNumber |
		
	portNumber := lsPort portNumber.
	
	self should: [(kit sensorConnectors at: portNumber) connected = true].
	self should: [lsPort connected = true].
	self should: [(kit sensorConnectors at: 3) connected = false].
	
	lsPort unplug.
	
	self should: [(kit sensorConnectors at: portNumber) connected = false].
	self should: [lsPort connected = false].
	self should: [(kit sensorConnectors at: 3) connected = false].
	
	lsPort plugTo: (kit sensorConnectors at: 3).
	
	self should: [(kit sensorConnectors at: portNumber) connected = false].
	self should: [lsPort connected = true].
	self should: [(kit sensorConnectors at: 3) connected = true].
	
	lsPort delete.
	kit delete.
