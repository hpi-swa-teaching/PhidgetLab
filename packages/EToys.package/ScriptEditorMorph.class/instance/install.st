buttons
install
	"Accept the current classic tiles as the new source code for the script.  In the case of universalTiles, initialize the method and its methodInterface if not already done."

	Preferences universalTiles ifFalse:
		[self removeSpaces].
	scriptName ifNotNil:
		[playerScripted acceptScript: self topEditor for:  scriptName asSymbol]