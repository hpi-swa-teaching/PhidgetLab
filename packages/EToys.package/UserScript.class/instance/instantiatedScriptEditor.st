script editor
instantiatedScriptEditor
	"Return the current script editor, creating it if necessary"

	self isTextuallyCoded ifTrue:
			[^ (player costume pasteUpMorph ifNil: [player costume "the world, backstop"]) scriptorForTextualScript: selector ofPlayer: player].

	currentScriptEditor ifNil:
		[currentScriptEditor := (player class includesSelector: selector) 
			ifTrue: [ScriptEditorMorph new 
				fromExistingMethod: selector 
				forPlayer: player]
			ifFalse: [ScriptEditorMorph new
				setMorph: player costume
				scriptName: selector].
		status == #ticking ifTrue: [player costume arrangeToStartStepping]].
	
	^ currentScriptEditor