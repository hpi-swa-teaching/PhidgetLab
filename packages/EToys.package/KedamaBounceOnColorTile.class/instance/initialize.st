initialization
initialize

	super initialize.
	type := #Player.
	operatorOrExpression := #bounceOn:color:.
	self addPlayerTile.
