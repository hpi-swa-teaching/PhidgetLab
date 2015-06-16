class initialization
registerInFlapsRegistry
	"Register the receiver in the system's flaps registry"
	self environment
		at: #Flaps
		ifPresent: [:cl | cl registerQuad: #(ScriptableButton		authoringPrototype	'Button' 		'A Scriptable button')
						forFlapNamed: 'PlugIn Supplies'.
						cl registerQuad: #(ScriptableButton		authoringPrototype	'Button' 		'A Scriptable button')
						forFlapNamed: 'Scripting'.
						cl registerQuad: #(ScriptableButton		authoringPrototype		'Scriptable Button'	'A button whose script will be a method of the background Player')
						forFlapNamed: 'Stack Tools'.
						cl registerQuad: #(ScriptableButton		authoringPrototype	'Button' 		'A Scriptable button')
						forFlapNamed: 'Supplies'.]