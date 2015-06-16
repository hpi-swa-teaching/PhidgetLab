player commands
getBlueComponentIn: aPatch

	| i pix |
	i := self index.
	pix := aPatch costume renderedMorph pixelAtX: ((turtles arrays at: 2) at: i) y: ((turtles arrays at: 3) at: i).
	^ pix bitAnd: 16rFF.
