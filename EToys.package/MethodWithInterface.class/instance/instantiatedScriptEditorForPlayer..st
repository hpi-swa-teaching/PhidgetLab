script editor
instantiatedScriptEditorForPlayer: aPlayer
	"Return a new script editor for the player and selector"

	| aScriptEditor |
	aScriptEditor := (self playerClass includesSelector: selector) 
			ifTrue: [ScriptEditorMorph new 
				fromExistingMethod: selector 
				forPlayer: aPlayer]
			ifFalse: [ScriptEditorMorph new
				setMorph: aPlayer costume
				scriptName: selector].
		defaultStatus == #ticking ifTrue:
			[aPlayer costume arrangeToStartStepping].
	
	^ aScriptEditor