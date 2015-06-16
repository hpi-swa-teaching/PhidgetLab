customevents-status control
explainStatusAlternatives
	"Open a little window that explains the various status 
	alternatives "
	(StringHolder new contents: (ScriptingSystem statusHelpStringFor: player))
		openLabel: 'Script Status' translated