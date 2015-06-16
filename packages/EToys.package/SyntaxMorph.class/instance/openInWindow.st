initialization
openInWindow

	| window widget sel |
	sel := ''.
	self firstSubmorph allMorphs do: [:rr | 
			(rr isKindOf: StringMorph) ifTrue: [sel := sel, rr contents]].
	window := (SystemWindow labelled: 'Tiles for ', self parsedInClass printString, '>>',sel).
	widget := self inAScrollPane.
	widget color: Color paleOrange.
	window
		addMorph: widget
		frame: (0@0 extent: 1.0@1.0).
	window openInWorldExtent: (
		self extent + (20@40) min: (Display boundingBox extent * 0.8) rounded
	)

