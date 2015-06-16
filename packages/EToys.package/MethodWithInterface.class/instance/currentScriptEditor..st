script editor
currentScriptEditor: anEditor
	"Set the receiver's currentScriptEditor as indicated, if I care.  MethodWithInterface does not care, since it does not hold on to a ScriptEditor.  A subclass of mine, however does, or did, care"