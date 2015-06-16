costume
startHavingParameterFor: aSelector
	"Start having a parameter for the given selector.  After this change, the script name will change by the addition of a colon."

	| newSelector |
	self renameScript: aSelector newSelector: (newSelector := (aSelector, ':') asSymbol).
	(self scriptEditorFor: newSelector) install