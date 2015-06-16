stop-step-go buttons
startRunningScripts
	"Start running scripts; get stop-step-go buttons to show the right thing"

	self stopButtonState: #off.
	self stepButtonState: #off.
	self goButtonState: #on.
	associatedMorph startRunningAll.

	"associatedMorph borderColor: Preferences borderColorWhenRunning."

	ThumbnailMorph recursionReset.  "needs to be done once in a while (<- tk note from 1997)"