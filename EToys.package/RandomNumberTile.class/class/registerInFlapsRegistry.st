class initialization
registerInFlapsRegistry
	"Register the receiver in the system's flaps registry"
	self environment
		at: #Flaps
		ifPresent: [:cl | cl registerQuad: #(RandomNumberTile		new		'Random'		'A random-number tile for use with tile scripting')
						forFlapNamed: 'PlugIn Supplies'.
						cl registerQuad: #(RandomNumberTile	new	'Random'		'A tile that will produce a random number in a given range')
						forFlapNamed: 'Scripting'.]