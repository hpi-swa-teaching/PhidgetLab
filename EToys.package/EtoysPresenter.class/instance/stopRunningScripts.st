stop-step-go buttons
stopRunningScripts
	"Put all ticking scripts within my scope into paused mode.  Get any scripting-control buttons to show the correct state"

	self stopButtonState: #on.
	self stepButtonState: #off.
	self goButtonState: #off.
	associatedMorph stopRunningAll.

	"associatedMorph borderColor: Preferences borderColorWhenStopped"