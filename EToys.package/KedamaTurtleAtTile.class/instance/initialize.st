initialization
initialize

	super initialize.
	type := #Player.
	operatorOrExpression := #getTurtleAt:.
	self addTile.
