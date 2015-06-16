versions
recreateScriptFrom: anEditor
	"Used to revert to old tiles"

	formerScriptEditors isEmptyOrNil ifTrue: [^ self].
	self revertScriptVersionFrom: anEditor installing: formerScriptEditors last