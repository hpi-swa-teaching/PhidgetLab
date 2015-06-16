slot getters/setters
getHeadingTheta
	"Answer the angle, in degrees, between the positive x-axis and the receiver's heading vector"

	| aHeading excess normalized |
	aHeading := self getHeadingUnrounded.
	excess := aHeading - (aHeading rounded).

	normalized := (450 - aHeading) \\ 360.
	^ normalized + excess