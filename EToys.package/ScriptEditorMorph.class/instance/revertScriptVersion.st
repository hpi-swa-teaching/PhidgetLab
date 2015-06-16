other
revertScriptVersion
	| aUserScript |
	aUserScript := playerScripted class userScriptForPlayer: playerScripted selector: scriptName.
	aUserScript revertScriptVersionFrom: self