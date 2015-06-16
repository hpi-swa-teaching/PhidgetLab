mouse
targetPartFor: aMorph
	"Return the row into which the given morph should be inserted."

	| centerY |
	centerY := aMorph fullBounds center y.
	(Array with: testPart with: yesPart with: noPart) do: [:m |
		(centerY <= m bounds bottom) ifTrue: [^ m]].
	^ noPart
