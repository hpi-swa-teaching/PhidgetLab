versions
savedTileVersionsCount
	"Answer the number of saved tile versions of the script"

	^ formerScriptingTiles ifNil: [0] ifNotNil: [formerScriptingTiles size]