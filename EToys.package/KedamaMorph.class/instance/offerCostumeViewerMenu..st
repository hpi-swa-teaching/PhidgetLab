menu
offerCostumeViewerMenu: aMenu
	aMenu add: 'add a new patch variable' translated action: #newPatch.
	aMenu balloonTextForLastItem: 'Add a new patch variable' translated.
	aMenu add: 'add a new breed of turtle' translated action: #newTurtle.
	aMenu balloonTextForLastItem: 'Add a new turtle' translated.
	aMenu addLine.
