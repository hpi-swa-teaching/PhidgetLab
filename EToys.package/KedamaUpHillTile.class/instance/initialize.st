initialization
initialize

	super initialize.
	type := #Patch.
	operatorOrExpression := #getUphillIn:.
	self addPatchTile.
