updating
revertToLastSavedTileVersionFor: anEditor
	"revert to the last saved tile version"

	Preferences universalTiles
		ifFalse:
			[formerScriptingTiles isEmptyOrNil ifFalse:
				[anEditor reinsertSavedTiles: formerScriptingTiles last second]]
		ifTrue:
			[anEditor removeAllButFirstSubmorph.
			anEditor insertUniversalTiles].
	anEditor showingMethodPane: false.
	isTextuallyCoded := false