initialization
initialize

	super initialize.
	type := #Player.
	operatorOrExpression := #getDistanceTo:.
	self addTile.
