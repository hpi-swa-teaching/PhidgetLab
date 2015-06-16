script editor
allScriptEditors
	"Answer all the script editors that exist for the class and selector of this interface"

	^ ScriptEditorMorph allInstances select: 
		[:aScriptEditor | aScriptEditor playerScripted class == self playerClass and:
			[aScriptEditor scriptName == selector]]