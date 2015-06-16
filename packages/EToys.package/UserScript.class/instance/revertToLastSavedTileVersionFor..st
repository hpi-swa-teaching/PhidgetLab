versions
revertToLastSavedTileVersionFor: anEditor
	"revert to the last saved tile version"

	formerScriptEditors isEmptyOrNil ifFalse:
		[self revertScriptVersionFrom: anEditor installing: formerScriptEditors last]