drawing
drawOn: aCanvas

	| rect |
	rect := Rectangle origin: self position corner: self position + (self width @ self height).
	aCanvas fillRectangle: rect color: self color.
	
	self drawNumber: aCanvas.
	