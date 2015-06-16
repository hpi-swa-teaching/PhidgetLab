buttons
installWithNewLiteral

	self removeSpaces.
	scriptName ifNotNil:
		[playerScripted ifNotNil: [playerScripted acceptScript: self topEditor for:  scriptName]]