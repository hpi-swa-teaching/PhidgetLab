script editor
allScriptActivationButtons
	"Answer all the script-activation buttons that exist for this interface"

	^ ScriptActivationButton allInstances select: 
		[:aButton | aButton uniclassScript == self]