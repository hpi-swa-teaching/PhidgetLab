other
userScriptObject
	"Answer the user-script object associated with the receiver"

	| aPlayerScripted topEd |
	aPlayerScripted := (topEd := self topEditor) playerScripted.
	^ aPlayerScripted class userScriptForPlayer: aPlayerScripted selector: topEd scriptName 