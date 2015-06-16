slot-kedama
newTurtle

	| m |
	m := KedamaTurtleMorph new openInWorld.
	self costume hasNoTurtleBreed ifTrue: [m color: Color red].
	self useTurtle: m player.
	m setNameTo: (ActiveWorld unusedMorphNameLike: m innocuousName).
	self costume world primaryHand attachMorph: m.
	^ m.
