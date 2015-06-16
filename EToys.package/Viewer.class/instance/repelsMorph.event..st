dropping/grabbing
repelsMorph: aMorph event: ev
	"viewers in flaps are resistant to drop gestures"
	owner isFlap ifTrue:[^true].
	^false