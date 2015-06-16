accessing - private
setColorVarAt: arrayIndex at: i put: v

	| val |
	val := v isColor ifTrue: [v pixelValueForDepth: 32] ifFalse: [v].
	(turtles arrays at: arrayIndex) at: i put: val.
