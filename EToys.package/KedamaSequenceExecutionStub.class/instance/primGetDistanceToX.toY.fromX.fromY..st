primitives
primGetDistanceToX: toX toY: toY fromX: fromX fromY: fromY

	<primitive: 'scalarGetDistanceTo' module:'KedamaPlugin'>
	^ ((fromX - toX) squared + (fromY - toY)) squared sqrt.
