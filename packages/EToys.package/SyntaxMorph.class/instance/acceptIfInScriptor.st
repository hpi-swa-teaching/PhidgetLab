menus
acceptIfInScriptor
	| root |
	"If I am in a ScriptEditorMorph, tell my root to accept the new changes."

	(self ownerThatIsA: ScriptEditorMorph) ifNotNil: [
		root := self rootTile.
		root ifNotNil: [root accept]]. 