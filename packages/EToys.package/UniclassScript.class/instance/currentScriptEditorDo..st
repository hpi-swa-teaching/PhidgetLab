script editor
currentScriptEditorDo: aBlock
	"Evaluate a block on behalf of my current script editor, if any"

	currentScriptEditor ifNotNil:
		[aBlock value: currentScriptEditor]