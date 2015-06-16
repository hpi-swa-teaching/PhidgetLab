primitives
primDrawOn: destBits destWidth: destWidth destHeight: destHeight xArray: xArray yArray: yArray colorArray: colorArray visibleArray: visibleArray

	| x y visible bitsIndex |
	<primitive: 'drawTurtlesInArray' module: 'KedamaPlugin'>
	"^ KedamaPlugin doPrimitive: #drawTurtlesInArray."

	1 to: xArray size do: [:i |
		x := (xArray at: i) asInteger.
		y := (yArray at: i) asInteger.
		visible := (visibleArray at: i).
		(visible ~= 0 and: [((x >= 0) and: [y >= 0]) and: [(x < destWidth) and: [y < destHeight]]]) ifTrue: [
			bitsIndex := ((y * destWidth) + x) + 1.
			destBits at: bitsIndex put: (colorArray at: i).
		]
	].
