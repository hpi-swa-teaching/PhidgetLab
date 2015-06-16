initialization
initialize

	super initialize.
	type := #Patch.
	operatorOrExpression := #setBlueComponentIn:to:.
	self addPatchTile.
	self line1: 'setBlueComponent:'.
