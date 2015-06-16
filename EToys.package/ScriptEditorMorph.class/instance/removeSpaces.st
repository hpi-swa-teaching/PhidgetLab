dropping/grabbing
removeSpaces
	"Remove vertical space"

	self submorphsDo:
		[:m | (m isMemberOf: Morph) ifTrue: [m delete]].
	self removeEmptyRows.
	submorphs isEmpty ifTrue: [self height: 14]