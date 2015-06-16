save & revert
revertToTileVersion
	"The receiver, currently showing textual code,  is asked to revert to the last-saved tile version"

	| aUserScript |

	self 
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap.
	aUserScript := playerScripted class userScriptForPlayer: playerScripted selector: scriptName.
	aUserScript revertToLastSavedTileVersionFor: self.
	self currentWorld startSteppingSubmorphsOf: self