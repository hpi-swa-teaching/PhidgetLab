commands and slots
basicPixelAtX: xPos y: yPos

	| x y i |
	x := xPos truncated.
	y := yPos truncated.
	((x < 0) or: [y < 0]) ifTrue: [^ 0].
	((x >= form width) or: [y >= form height]) ifTrue: [^ 0].
	i := ((y * form width) + x) + 1.
	form bits class == ByteArray ifTrue: [form unhibernate].
	^ form bits at: i.
