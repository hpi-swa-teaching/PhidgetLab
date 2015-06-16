buttons
tryMe
	"Evaluate the given script on behalf of the scripted object"

	scriptName numArgs = 0
		ifTrue:
			[self playerScripted performScriptIfCan: scriptName ]

