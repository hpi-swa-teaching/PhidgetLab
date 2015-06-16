other
setScriptNameTo: aNewName
	"The user has typed into the script-name pane.  Accept the changed contents as the new script name, and take action accordingly"

	playerScripted renameScript: self scriptName newSelector:
		(playerScripted acceptableScriptNameFrom: aNewName forScriptCurrentlyNamed:  self scriptName)