accessing
value: anObject 
	| scriptEditor |
	super value: anObject.
	(scriptEditor := self ownerThatIsA: ScriptEditorMorph)
		ifNotNil: [scriptEditor setParameterType: anObject]