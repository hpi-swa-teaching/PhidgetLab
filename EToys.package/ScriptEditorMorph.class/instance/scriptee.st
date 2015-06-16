buttons
scriptee
	| editor |
	playerScripted ifNotNil: [^ playerScripted].
	(editor := self topEditor) == self ifTrue: [self error: 'unattached script editor'. ^ nil].
	^ editor scriptee