pen
setPenDown: penDown
	"Set the penDown state as indicated, to true or false"

	| morph trailMorph tfm |
	self actorState setPenDown: penDown.
	((morph := self costume) notNil and: [(trailMorph := morph trailMorph) notNil])
		ifTrue:
		[tfm := morph owner transformFrom: trailMorph.
		trailMorph notePenDown: penDown forPlayer: self
					at: (tfm localPointToGlobal: morph referencePosition)]
