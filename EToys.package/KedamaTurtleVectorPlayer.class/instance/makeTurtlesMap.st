turtle map
makeTurtlesMap

	| xArray yArray width height whoArray ret |
	xArray := arrays at: 2.
	yArray := arrays at: 3.
	whoArray := arrays at: 1.
	width := kedamaWorld dimensions x.
	height := kedamaWorld dimensions y.
	turtlesMap ifNil: [turtlesMap := WordArray new: width * height].

	ret := self primMakeTurtlesMap: turtlesMap whoArray: whoArray xArray: xArray yArray: yArray width: width height: height.

	ret ifNil: [self basicMakeTurtlesMap].

	turtleMapValid := true.
