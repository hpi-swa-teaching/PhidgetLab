player commands
setRedComponentIn: aPatch to: value

	| i pix |
	i := self index.
	pix := aPatch costume renderedMorph pixelAtX: ((turtles arrays at: 2) at: i) y: ((turtles arrays at: 3) at: i).
	pix := (pix bitAnd: 16rFFFF) bitOr: ((value asInteger bitAnd: 16rFF) bitShift: 16).
	aPatch costume renderedMorph pixelAtX: ((turtles arrays at: 2) at: i) y: ((turtles arrays at: 3) at: i) put: pix.
