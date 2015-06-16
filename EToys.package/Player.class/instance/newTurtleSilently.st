slot-kedama
newTurtleSilently

	| m |
	m := KedamaTurtleMorph new openInWorld.
	self useTurtle: m player.
	m turtleCount: 0.
	m setNameTo: (ActiveWorld unusedMorphNameLike: m innocuousName).
	^ m.
