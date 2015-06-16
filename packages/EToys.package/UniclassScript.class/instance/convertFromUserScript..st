initialization
convertFromUserScript: aUserScript
	"The argument represents an old UserScript object.  convert it over"

	defaultStatus := aUserScript status.
	isTextuallyCoded := aUserScript isTextuallyCoded.
	currentScriptEditor := aUserScript currentScriptEditor.
	formerScriptingTiles :=  aUserScript formerScriptEditors ifNotNil:
		[aUserScript formerScriptEditors collect:
			[:aScriptEditor |
				Array with: aScriptEditor timeStamp with: aScriptEditor submorphs allButFirst]]