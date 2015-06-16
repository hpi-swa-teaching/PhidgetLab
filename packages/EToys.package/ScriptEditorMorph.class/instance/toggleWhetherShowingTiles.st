other
toggleWhetherShowingTiles
	"Toggle between showing the method pane and showing the tiles pane"

	self showingMethodPane
		ifFalse:				"currently showing tiles"
			[self showSourceInScriptor]

		ifTrue:				"current showing textual source"
			[Preferences universalTiles
				ifTrue: [^ self revertToTileVersion].
			self savedTileVersionsCount >= 1
				ifTrue:
					[(self userScriptObject lastSourceString = (playerScripted class compiledMethodAt: scriptName) decompileString)
						ifFalse:
							[(self confirm: 
'Caution -- this script was changed
textually; if you revert to tiles at this
point you will lose all the changes you
may have made textually.  Do you
really want to do this?' translated) ifFalse: [^ self]].
					self revertToTileVersion]
				ifFalse:
					[Beeper beep]]