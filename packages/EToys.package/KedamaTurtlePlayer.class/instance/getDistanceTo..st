commands and slots
getDistanceTo: aPlayer

	| dist |
	dist := ((aPlayer x - self x) squared + (aPlayer y - self y) squared) sqrt.
	^ dist.
