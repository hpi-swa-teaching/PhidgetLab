player commands
setTurtleVisible: aBoolean

	^ (turtles arrays at: 6) at: self index put: (aBoolean ifTrue: [1] ifFalse: [0])
