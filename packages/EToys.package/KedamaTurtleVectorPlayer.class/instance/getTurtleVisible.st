player commands
getTurtleVisible

	^ (turtles arrays at: 6) collect: [:t | t = 1].
