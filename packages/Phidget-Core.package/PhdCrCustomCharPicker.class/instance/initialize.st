initialization
initialize
	"Initializes my apperance and my instance variables."
	
	super initialize.
	
	customChar := PhdCrCustomChar newWith: 0 and: 0.
	initialCustomChar := PhdCrCustomChar newWith: 0 and: 0.

	self 
		extent: self minWidth @ self minHeight;
		color: Color blue;
		initializePixel;
		drawPixel;
		initializeButtons;
		drawButtons.