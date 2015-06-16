other
recreateScript
	| aUserScript |
	aUserScript := playerScripted class userScriptForPlayer: playerScripted selector: scriptName.
	aUserScript recreateScriptFrom: self