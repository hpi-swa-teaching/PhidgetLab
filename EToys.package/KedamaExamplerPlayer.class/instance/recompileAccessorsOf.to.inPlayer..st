method management
recompileAccessorsOf: oldSlotName to: newSlotName inPlayer: aPlayer
	"Note that aPlayer has renamed a slot formerly known as oldSlotName to be newSlotName"

	self isPrototypeTurtlePlayer ifTrue: [
		sequentialStub ifNotNil: [sequentialStub noteRenameOf: oldSlotName to: newSlotName inPlayer: aPlayer].
		turtles noteRenameOf: oldSlotName to: newSlotName inPlayer: aPlayer.
	].
