turtle map
aTurtleAtX: xPos y: yPos

	| w x y index who stub |
	turtleMapValid ifFalse: [
		self makeTurtlesMap.
	].

	w := kedamaWorld dimensions x.
	x := xPos truncated.
	y := yPos truncated.
	x < 0 ifTrue: [^ nil].
	x >= w ifTrue: [^ nil].
	y < 0 ifTrue: [^ nil].
	y >= kedamaWorld dimensions y ifTrue: [^ nil].
	index := (w * y) + x + 1.
	who := turtlesMap at: index.
	who = 0 ifTrue: [^ nil].
	who = lastWho ifTrue: [^ lastWhoStub].
	stub := exampler clonedSequentialStub.
	stub who: who.
	lastWho := who.
	^ lastWhoStub := stub.
