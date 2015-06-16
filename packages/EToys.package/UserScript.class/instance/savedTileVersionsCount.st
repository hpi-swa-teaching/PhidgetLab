versions
savedTileVersionsCount
	"Answer the number of saved tile versions of the script"

	^ formerScriptEditors ifNil: [0] ifNotNil: [formerScriptEditors size]