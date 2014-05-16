initialization
positionSubmorphs

	leftWheel position: self position + (15 @ 25).
	rightWheel position: leftWheel position + ((leftWheel width + 10) @ 0).
	leftVelocityBar position: leftWheel bottomLeft + (0@5).
	rightVelocityBar position: rightWheel bottomLeft + (0@5).
	self positionBin.