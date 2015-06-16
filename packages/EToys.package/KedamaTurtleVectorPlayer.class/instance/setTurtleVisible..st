player commands
setTurtleVisible: aBooleanArray

	1 to: self size do: [:i |
		(turtles arrays at: 6) at: i put: ((aBooleanArray at: i) ifTrue: [1] ifFalse: [0]).
	].
