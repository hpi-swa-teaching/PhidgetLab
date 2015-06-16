primitives
primGetAngleToX: toX toY: toY fromX: fromX fromY: fromY

	| ret |
	<primitive: 'scalarGetAngleTo' module:'KedamaPlugin'>
	ret := ((toX - fromX)@(toY - fromY)) theta radiansToDegrees + 90.0.
	ret > 360.0 ifTrue: [^ ret - 360.0].
	^ ret.
