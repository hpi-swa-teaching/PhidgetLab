initialization
initialize

	super initialize.
	type := #Patch.
	operatorOrExpression := #getPatchValueIn:.
	self addPatchTile.
	self line1: 'getPatchValueIn:'.
