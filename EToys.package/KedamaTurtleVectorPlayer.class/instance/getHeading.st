player commands
getHeading

	| heading result ret |
	heading := (arrays at: 4).
	result := KedamaFloatArray new: heading size.
	ret := self primGetHeading: heading into: result.
	ret ifNotNil: [^ result].
	