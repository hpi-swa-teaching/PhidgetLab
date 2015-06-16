primitives
primPixelsAtXArray: xArray yArray: yArray bits: bits width: width height: height into: aWordArray
	| x y formIndex val |
	<primitive: 'primPixelsAtXY' module: 'KedamaPlugin'>
	"^ KedamaPlugin doPrimitive: #primPixelsAtXY."
	1 to: aWordArray size do: [:i |
		val := nil.
		x := (xArray at: i) truncated.
		y := (yArray at: i) truncated.
		((x < 0) or: [y < 0]) ifTrue: [val := 0].
		((x >= form width) or: [y >= form height]) ifTrue: [val := 0].
		val ifNil: [
			formIndex := ((y * form width) + x) + 1.
			val := bits at: formIndex.
		].
		aWordArray at: i put: val.
	].
