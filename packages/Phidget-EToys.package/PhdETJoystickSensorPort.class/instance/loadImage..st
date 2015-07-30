animation
loadImage: aValue

	| xValue yValue value xPos yPos|
	aValue = 'gray'  ifTrue: [^super loadImage: aValue].

	xValue := self masterValue ifNil: [500].
	yValue := self slaveValue.

	xPos:= ''.
	yPos := ''.
	xValue < self rightThreshold ifTrue: [xPos := 'Right'].
	xValue > self leftThreshold ifTrue: [xPos := 'Left'].
	yValue < self bottomThreshold ifTrue: [yPos := 'Bottom'].
	yValue > self topThreshold ifTrue: [yPos := 'Top'].

	value := xPos, yPos.
	super loadImage: value.