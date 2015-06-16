access
scriptEditor
	"Answer the receiver's script editor.  The slightly strange code here is in order to contend with the unusual situation where a parameter tile obtained from one script editor is later dropped into a different script editor.  As long as the parameter tile is *in* a script editor, that containing scriptEditor is the one; if it is *not*, then we use the last known one"

	| aScriptEditor |
	^ (aScriptEditor := self outermostMorphThat: [:m | m isKindOf: ScriptEditorMorph])
		ifNotNil:
			[scriptEditor := aScriptEditor]
		ifNil:
			[scriptEditor]