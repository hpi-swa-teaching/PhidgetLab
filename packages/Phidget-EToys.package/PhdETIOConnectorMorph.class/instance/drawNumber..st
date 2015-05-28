drawing
drawNumber: aCanvas
	
	|rect|
		
	rect := Rectangle origin: self center - (4 @ 6) corner: self center + (4 @ 6).
	"aCanvas fillOval: rect color: (Color r: 1 g: 1 b: 1 alpha: 0.5)."
	aCanvas drawString: (self number) asString in: rect font: nil color: (Color r: 1 g: 1 b: 1 alpha: 0.5).
	