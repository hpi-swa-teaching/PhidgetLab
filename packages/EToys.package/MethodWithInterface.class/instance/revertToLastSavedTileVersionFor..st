updating
revertToLastSavedTileVersionFor: anEditor
	"revert to the last saved tile version.  Only for universal tiles."

	anEditor removeAllButFirstSubmorph.
	anEditor insertUniversalTiles.
	anEditor showingMethodPane: false