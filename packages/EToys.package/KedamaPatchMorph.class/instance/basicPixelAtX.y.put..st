commands and slots
basicPixelAtX: xPos y: yPos put: value

	| x y i v |
	x := xPos truncated.
	y := yPos truncated.
	v := value asInteger min: 16rFFFFFFFF max: 0.
	((x < 0) or: [y < 0]) ifTrue: [^ self].
	((x >= form width) or: [y >= form height]) ifTrue: [^ self].
	i := ((y * form width) + x) + 1.
	form bits class == ByteArray ifTrue: [form unhibernate].
	form bits at: i put: v.
	self formChanged.
