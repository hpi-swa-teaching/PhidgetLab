group turtle creation
createTurtlesAsIn: aForm originAt: origin

	| c xArray yArray colorArray newX newY |
	xArray := OrderedCollection new: aForm width * aForm height.
	yArray := OrderedCollection new: aForm width * aForm height.
	colorArray := OrderedCollection new: aForm width * aForm height.
	0 to: aForm height do: [:y |
		0 to: aForm width do: [:x |
			c := aForm colorAt: (x@y).
			c isTransparent ifFalse: [
				newX := x + origin x.
				newY := y + origin y.
				((newX >= 0 and: [newX < kedamaWorld dimensions x]) and: [newY >= 0 and: [newY < kedamaWorld dimensions y]]) ifTrue: [
					xArray add: newX.
					yArray add: newY.
					colorArray add: (c pixelValueForDepth: 32).
				].
			].
		].
	].
	kedamaWorld makeTurtlesAtPositionsIn: {xArray asArray. yArray asArray. colorArray asArray} examplerPlayer: self player ofPrototype: nil.
	self privateTurtleCount: (kedamaWorld turtlesCountOf: self player).
