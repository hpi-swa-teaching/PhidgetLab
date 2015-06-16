initialization
initialize

	super initialize.
	type := #Patch.
	operatorOrExpression := #getBlueComponentIn:.
	self addPatchTile.
	self line1: 'getBlueComponentIn:'.
