buttons
dismiss
	"Dismiss the scriptor, usually nondestructively"

	owner ifNil: [^ self].
	scriptName ifNil: [^ self delete].  "ad hoc fixup for bkwrd compat"
	(playerScripted isExpendableScript: scriptName) ifTrue: [playerScripted removeScript: scriptName  fromWorld: self world].
	handWithTile := nil.
	self delete