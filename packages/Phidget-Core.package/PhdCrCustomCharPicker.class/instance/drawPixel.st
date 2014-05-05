initialization
drawPixel
	"Draw the pixel from my pixel-array on my surface."

	| x yUpper yLower padding pixelSize |
	padding := (self width // 31) min: (self height // 61).
	pixelSize := padding * 5.
	x := self right - (pixelSize + padding).
	yUpper := self top + padding.
	yLower := yUpper + (4 * (pixelSize + padding)).

	1 to: 20 do: [ :i | 
		(upperPixel at: i) 
			position: (x @ yUpper);
			extent: pixelSize @ pixelSize.
		(lowerPixel at: i) 
			position: (x @ yLower);
			extent: pixelSize @ pixelSize. 
		
		self 
			addMorph: (upperPixel at: i);
			addMorph: (lowerPixel at: i).
		
		x := x - (pixelSize + padding).
		i \\ 5 == 0 ifTrue: [
			x := self right - (pixelSize + padding).
			yUpper := yUpper + (pixelSize + padding).
			yLower := yUpper + (4 * (pixelSize + padding)) ] 
		].