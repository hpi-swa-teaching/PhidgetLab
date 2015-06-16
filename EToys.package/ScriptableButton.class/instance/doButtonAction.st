button
doButtonAction
	"The user has pressed the button.  Dispatch to the actual user script, if any."

	scriptSelector ifNil: [^ super doButtonAction].
	self pasteUpMorph player performScriptIfCan: scriptSelector