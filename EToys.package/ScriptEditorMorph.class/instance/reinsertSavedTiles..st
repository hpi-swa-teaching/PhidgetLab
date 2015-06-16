other
reinsertSavedTiles: savedTiles
	"Revert the scriptor to show the saved tiles"

	self submorphs doWithIndex: [:m :i | i > 1 ifTrue: [m delete]].
	self addAllMorphs: savedTiles.
	self allMorphsDo: [:m | m isTileScriptingElement ifTrue: [m bringUpToDate]].
	self install.
	self showingMethodPane: false