animation
loadImage: aValue

	| xValue yValue value xPos yPos |
	(aValue = #gray) 
	ifTrue: [super loadImage: aValue]
	ifFalse:
		[xValue := self masterValue.
		(xValue = nil)
		ifTrue: [xValue := 500].
		yValue := self slaveValue.
		xPos := ''.
		yPos := ''.
		(xValue < 330) ifTrue: [xPos := 'Right'].
		(xValue > 660) ifTrue: [xPos := 'Left'].
		(yValue < 330) ifTrue: [yPos := 'Bottom'].
		(yValue > 660) ifTrue: [yPos := 'Top'].
		value := xPos, yPos.
		super loadImage: value.].