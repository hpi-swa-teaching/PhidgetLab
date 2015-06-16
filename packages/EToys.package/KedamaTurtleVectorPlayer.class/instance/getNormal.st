player commands
getNormal

	| result ret normal |
	normal := (arrays at: 7).
	result := KedamaFloatArray new: normal size.
	ret := self primGetHeading: normal into: result.
	ret ifNotNil: [^ result].
