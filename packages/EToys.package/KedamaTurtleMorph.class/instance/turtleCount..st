accessing
turtleCount: count

	| c |
	c := count asInteger max: 0.
	kedamaWorld setTurtlesCount: c examplerPlayer: self player color: ((self color pixelValueForDepth: 32) bitAnd: 16rFFFFFF).
	turtleCount := c.
	"turtleCount <= 0 ifTrue: [self player allOpenViewers do: [:v | v providePossibleRestrictedView: 0]]."