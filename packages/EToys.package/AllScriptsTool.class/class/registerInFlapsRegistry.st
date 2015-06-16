class initialization
registerInFlapsRegistry
	"Register the receiver in the system's flaps registry"
	self environment
		at: #Flaps
		ifPresent: [:cl | cl registerQuad: #(AllScriptsTool			allScriptsToolForActiveWorld	'All Scripts' 		'A tool that lets you see and control all the running scripts in your project')
						forFlapNamed: 'PlugIn Supplies'.
						cl registerQuad: #(AllScriptsTool			allScriptsToolForActiveWorld	'All Scripts' 		'A tool that lets you control all the running scripts in your world')
						forFlapNamed: 'Scripting'.
						cl registerQuad: #(AllScriptsTool			allScriptsToolForActiveWorld	'All Scripts' 		'A tool that lets you see and control all the running scripts in your project')
						forFlapNamed: 'Widgets']