housekeeping
abandonUnnecessaryUniclasses
	"Player abandonUnnecessaryUniclasses"
	| oldCount oldFree newFree newCount report |
	oldCount := self subclasses size - 1.
	oldFree := Smalltalk garbageCollect.
	self allSubInstances do:
		[:aPlayer | aPlayer revertToUnscriptedPlayerIfAppropriate].

	ScriptingSystem spaceReclaimed.
	newFree := Smalltalk garbageCollect.
	newCount := self subclasses size - 1.
	report := 'Before: ', oldCount printString, ' uniclasses, ', oldFree
printString, ' bytes free
After:  ', newCount printString, ' uniclasses, ', newFree printString, '
bytes free'.
	Transcript cr; show: 'abandonUnnecessaryUniclasses:'; cr; show: report.
	^ report
	