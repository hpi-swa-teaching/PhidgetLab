script editor
instantiatedScriptEditorForPlayer: aPlayer
	"Return the current script editor, creating it if necessary"

	currentScriptEditor ifNil:
		[currentScriptEditor := (self playerClass includesSelector: selector) 
			ifTrue:
				[Preferences universalTiles
					ifFalse:
						[self error: 'duplicate selector'].
				ScriptEditorMorph new fromExistingMethod: selector forPlayer: aPlayer]
			ifFalse:
				[ScriptEditorMorph new setMorph: aPlayer costume scriptName: selector].

		(defaultStatus == #ticking and: [selector numArgs = 0]) ifTrue:
			[aPlayer costume arrangeToStartStepping]].
	
	^ currentScriptEditor