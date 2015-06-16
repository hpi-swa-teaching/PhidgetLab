displaying
drawOn: aForm

	| xArray yArray colorArray visibleArray bits x y visible bitsIndex dimX dimY ret |
	xArray := arrays at: 2.
	yArray := arrays at: 3.
	colorArray := arrays at: 5.
	visibleArray := arrays at: 6.
	bits := aForm bits.
	dimX := aForm width.
	dimY := aForm height.

	ret := self primDrawOn: bits destWidth: dimX destHeight: dimY xArray: xArray yArray: yArray colorArray: colorArray visibleArray: visibleArray.
	ret ifNotNil: [^ self].

	1 to: self size do: [:index |
		x := (xArray at: index) truncated.
		y := (yArray at: index) truncated.
		visible := (visibleArray at: index) ~= 0.
		(visible and: [((x >= 0) and: [y >= 0]) and: [(x < dimX) and: [y < dimY]]]) ifTrue: [
			bitsIndex := ((y * dimX) + x) + 1.
			bits at: bitsIndex put: (colorArray at: index).
		].
	].

