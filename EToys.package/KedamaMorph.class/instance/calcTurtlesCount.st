turtles
calcTurtlesCount

	turtleCount := 0.
	turtlesDict do: [:a | turtleCount := turtleCount + a size].

	Smalltalk vmParameterAt: 5 put: ((turtleCount * 3) min: 16000 max: 4000).
	Smalltalk vmParameterAt: 6 put: ((turtleCount * 6) min: 32000 max: 8000).
