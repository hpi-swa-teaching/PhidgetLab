versions
revertScriptVersionFrom: anEditor 
	"Let user choose which prior tile version to revert to, and revert to it"

	| chosenStampAndTileList |
	formerScriptingTiles isEmptyOrNil ifTrue: [^Beeper beep].
	chosenStampAndTileList := formerScriptingTiles size = 1 
		ifTrue: [ formerScriptingTiles first]
		ifFalse: 
			[UIManager default 
						chooseFrom: (formerScriptingTiles collect: [:e | e first])
						values: formerScriptingTiles].
	chosenStampAndTileList ifNotNil: 
			[anEditor reinsertSavedTiles: chosenStampAndTileList second.
			isTextuallyCoded := false]