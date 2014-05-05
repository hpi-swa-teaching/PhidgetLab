accessing
calcRotationParameters
	"calculate the new step size for rotation."
	
	| normalizedSpeed |
	normalizedSpeed := speed / (maxSpeed - minSpeed). "-> 0.0 <= normalizedSpeed <= 1.0"
	rotationStep := normalizedSpeed asFloat / 3.