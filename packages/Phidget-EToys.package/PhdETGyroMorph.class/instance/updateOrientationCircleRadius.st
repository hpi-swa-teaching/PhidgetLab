private
updateOrientationCircleRadius

	| newDiameter |
	
	newDiameter := ((z abs sin * self width) + 2).
	
	orientationCircle
		extent: newDiameter @ newDiameter;
		center: self center.