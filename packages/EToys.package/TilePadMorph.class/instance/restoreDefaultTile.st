miscellaneous
restoreDefaultTile
	"Restore the receiver to showing only its default literal tile"

	self setToBearDefaultLiteral.
	(self ownerThatIsA: ScriptEditorMorph) ifNotNil:
		[:aScriptEditor | aScriptEditor install]