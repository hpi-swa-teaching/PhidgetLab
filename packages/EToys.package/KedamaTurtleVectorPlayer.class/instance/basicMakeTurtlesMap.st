turtle map
basicMakeTurtlesMap

	| x y xArray yArray width height mapIndex whoArray |
	xArray := arrays at: 2.
	yArray := arrays at: 3.
	whoArray := arrays at: 1.
	width := kedamaWorld dimensions x.
	height := kedamaWorld dimensions y.
	turtlesMap atAllPut: 0.

	1 to: self size do: [:index |
		x := (xArray at: index) truncated.
		y := (yArray at: index) truncated.
		mapIndex := (width * y) + x + 1.
		(0 < mapIndex and: [mapIndex <= turtlesMap size]) ifTrue: [
			turtlesMap at: mapIndex put: (whoArray at: index).
		].
	].

	turtleMapValid := true.
