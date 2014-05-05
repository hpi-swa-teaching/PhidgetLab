animation
rotate
	"This method is called from step. Increment the current rotation angle, normalize it and set the new angle."

	rotationAngle := rotationAngle + rotationStep.
	rotationAngle > (Float pi * 2) ifTrue: [ rotationAngle := rotationAngle - (Float pi * 2) ].
	self angle: rotationAngle.