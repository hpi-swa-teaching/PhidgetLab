initialization
createWheel
	"create and return a CircleMorph that looks like a wheel."
	
	| circle diameter |
	circle := CircleMorph new.
	diameter := 80.
	circle
		extent: diameter@diameter;
		color: (Color white);
		borderWidth: 3.
	self addSpokesToWheel: circle.
	^ circle