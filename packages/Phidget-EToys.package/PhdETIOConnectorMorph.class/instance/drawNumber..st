drawing
drawNumber: aCanvas
	
	|rect|
		
	rect := Rectangle origin: self center - self portLabelOffset corner: self center + self portLabelOffset.
	aCanvas drawString: (self portLabelNumber) asString in: rect font: nil color: (Color r: 1 g: 1 b: 1 alpha: 0.5).
	