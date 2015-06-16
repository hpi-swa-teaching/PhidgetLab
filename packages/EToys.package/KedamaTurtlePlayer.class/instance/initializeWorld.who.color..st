initialization
initializeWorld: aStarSqueakWorld who: anInteger color: cPixel

	| dims |
	dims := aStarSqueakWorld dimensions.
	world := aStarSqueakWorld.
	who := anInteger.
	x := world random: dims x - 1.
	y := world random: dims y - 1.
	headingRadians := ((self random: 36000) / 100.0) degreesToRadians.
	color := cPixel.
	self isGroup: false.
	self show.
