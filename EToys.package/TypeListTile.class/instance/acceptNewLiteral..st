user interface
acceptNewLiteral: aLiteral
	"Accept the new literal"

	| scriptEditor |
	super acceptNewLiteral: aLiteral.
	(scriptEditor := self ownerThatIsA: ScriptEditorMorph) ifNotNil:
			[scriptEditor setParameterType: aLiteral asSymbol]