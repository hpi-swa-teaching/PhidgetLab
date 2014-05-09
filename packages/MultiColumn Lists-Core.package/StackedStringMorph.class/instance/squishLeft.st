drawing
squishLeft
	"Squish everything as far left as we can"
	| space x |

	space _ 5.		"2 pixels space, 1 pixel bar, 2 pixels space"
	x _ bounds left + 2.
	locations _ Array streamContents: [:strm|
		sizes do: [:sz|
			strm nextPut: x.
			x _ x + sz + space.
			].
		].
