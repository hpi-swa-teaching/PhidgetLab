updating
updateShape

	| diffAngle vertices max slope a b |
	"self halt."
	a := angleA.
	b := angleB.
	(angleB < angleA) ifTrue: [ b := b + 360 ].
	diffAngle := (b - a) abs.
	vertices := { center }.
	slope := { 0 }.
	max := 8.
	(0 to: max) do: [:i |
		vertices := vertices copyWith: (center +
			(self pointFromAngle: a + (diffAngle * i asFloat / max))).
		slope := slope copyWith: nil].
	
	slope := slope copyWith: 0.
	slope at: 2 put: 0.
	slope := #(nil nil nil nil nil nil nil).
	slopeClamps := slope.
	self setVertices: vertices.