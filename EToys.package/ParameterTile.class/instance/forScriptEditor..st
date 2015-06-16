initialization
forScriptEditor: aScriptEditor
	"Make the receiver be associated with the given script editor"

	scriptEditor := aScriptEditor.
	self line1: aScriptEditor typeForParameter translated.