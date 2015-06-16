selection
currentSelectionDo: blockForSelection
	| rootTile |
	(rootTile := self rootTile) isMethodNode ifFalse:
		 [^ blockForSelection value: nil value: nil value: nil].
	rootTile valueOfProperty: #selectionSpec ifPresentDo:
		[:selectionSpec | ^ blockForSelection
							value: selectionSpec first
							value: selectionSpec second
							value: selectionSpec third].
	^ blockForSelection value: nil value: nil value: nil