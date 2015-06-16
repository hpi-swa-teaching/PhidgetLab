scripts-kernel
renameScript: oldSelector 
	"The user has asked to rename the script formerly known by oldSelector; obtain a new selector from the user, check it out, and if all is well, ascribe the new name as appropriate"

	| reply newSelector aUserScript |
	self flag: #deferred.
	"Relax the restriction below, before too long"
	aUserScript := self class userScriptForPlayer: self selector: oldSelector.
	aUserScript okayToRename 
		ifFalse: 
			[self 
				inform: 'Sorry, we do not permit you to rename
classic-tiled scripts that are currently
textually coded.  Go back to tile scripts
and try again.  Humble apologies.' translated.
			^self].
	reply := UIManager default request: 'Script Name' translated initialAnswer: oldSelector.
	reply isEmpty ifTrue: [^self].
	reply = oldSelector ifTrue: [^Beeper beep].
	newSelector := self acceptableScriptNameFrom: reply
				forScriptCurrentlyNamed: oldSelector.
	Preferences universalTiles 
		ifTrue: 
			["allow colons"

			(reply copyWithout: $:) = newSelector 
				ifTrue: [newSelector := reply asSymbol]
				ifFalse: [self inform: 'name will be modified']].
	self renameScript: oldSelector newSelector: newSelector