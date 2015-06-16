player commands
colorFromPatch: aPatch

	| i |
	i := self index.
	(turtles arrays at: 5) at: i put: ((aPatch costume renderedMorph pixelAtX: ((turtles arrays at: 2) at: i) y: ((turtles arrays at: 3) at: i)) bitAnd: 16rFFFFFF).
