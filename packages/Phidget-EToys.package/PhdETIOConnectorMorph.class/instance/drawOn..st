drawing
drawOn: aCanvas

	| rect |
	rect := Rectangle origin: self position corner: self position + (self width @ self height).
	aCanvas fillRectangle: rect color: self color.
	
	rect := Rectangle origin: self center - (4 @ 4) corner: self center + (4 @ 4).
	aCanvas fillOval: rect color: (Color r: 1 g: 1 b: 1 alpha: 0.5).
	
	