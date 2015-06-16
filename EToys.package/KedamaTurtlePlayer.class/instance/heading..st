commands and slots
heading: angleInDegrees
	"Set my heading in degrees. Like a compass, up or north is 0 degrees and right or east is 90 degrees."

	headingRadians := ((90.0 - angleInDegrees) \\ 360.0) degreesToRadians.
