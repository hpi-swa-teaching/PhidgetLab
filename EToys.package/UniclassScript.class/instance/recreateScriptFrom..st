versions
recreateScriptFrom: anEditor
	"Used to revert to old tiles"

	formerScriptingTiles isEmptyOrNil ifTrue: [^ self].
	anEditor reinsertSavedTiles: formerScriptingTiles last second.
	isTextuallyCoded := false