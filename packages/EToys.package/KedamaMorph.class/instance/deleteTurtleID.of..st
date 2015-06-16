turtles
deleteTurtleID: who of: examplerPlayer
	"Delete the given turtle from this world."

	| array |
	array := examplerPlayer turtles.
	array ifNil: [^ self].
	turtlesDictSemaphore critical: [
		array deleteTurtleID: who.
	].
	self calcTurtlesCount.
	examplerPlayer costume renderedMorph privateTurtleCount: array size.
	"examplerPlayer allOpenViewers do: [:v | v resetWhoIfNecessary]."
