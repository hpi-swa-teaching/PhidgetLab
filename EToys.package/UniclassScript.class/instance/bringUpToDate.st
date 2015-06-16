updating
bringUpToDate
	"Bring all versions of the receiver's tile-script source up to date"

	currentScriptEditor ifNotNil:
		[currentScriptEditor bringTileScriptingElementsUpToDate].
	formerScriptingTiles isEmptyOrNil ifFalse:
		[formerScriptingTiles do:
			[:aPair | aPair second do:
				[:aMorph | aMorph bringTileScriptingElementsUpToDate]]]