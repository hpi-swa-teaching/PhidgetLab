private
groupForward: dist

	| x y headingRadians |
	self size = 0 ifTrue: [^ self].

	x := (arrays at: 2) first.
	y := (arrays at: 3) first.
	headingRadians := (arrays at: 4) first.
	self groupSetX: (x + (dist asFloat * headingRadians cos)).
	self groupSetY: (y - (dist asFloat * headingRadians sin)).
