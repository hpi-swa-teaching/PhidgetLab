*EToys-operations
putDotOfDiameter: aDiameter at: aPoint
	"Put a dot of the given size at the given point, using my colot"

	(FormCanvas on: destForm) 
			fillOval: (Rectangle center: aPoint extent: (aDiameter @ aDiameter))
			color: self color