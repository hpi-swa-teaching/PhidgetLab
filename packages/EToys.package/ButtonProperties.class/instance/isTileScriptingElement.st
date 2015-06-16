accessing
isTileScriptingElement

	actionSelector == #runScript: ifFalse: [^false].
	arguments isEmptyOrNil ifTrue: [^false].
	^target isPlayerLike