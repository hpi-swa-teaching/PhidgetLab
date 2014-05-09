drawing
drawOn: aCanvas

	| rect |
	"top"
	rect := Rectangle origin: self position corner: self position + ((self width - 1) @ (self height * 0.2)).
	aCanvas fillRectangle: rect color: self color.
	
	"left"
	rect := Rectangle origin: self position corner: self position + (self width * 0.33 @ (self height * 0.67)).
	aCanvas fillRectangle: rect color: self color.
	
	rect := Rectangle origin: self position + (0 @ (self height * 0.67)) corner: self position + ((self width * 0.17) @ self height).
	aCanvas fillRectangle: rect color: self color.
	
	"right"
	rect := Rectangle origin: self position + (self width * 0.67 @ 0) corner: self position + (self width @ (self height * 0.67)).
	aCanvas fillRectangle: rect color: self color.
	
	rect := Rectangle origin: self position + ((self width * 0.83) @ (self height * 0.67)) corner: self position + (self width @ self height).
	aCanvas fillRectangle: rect color: self color.
	
	"bottom"
	rect := Rectangle origin: self position + (0 @ (self height * 0.83)) corner: self position + ((self width - 1) @ self height).
	aCanvas fillRectangle: rect color: self color.