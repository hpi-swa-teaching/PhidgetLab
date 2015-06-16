initialization
initialize

	super initialize.
	type := #Patch.
	operatorOrExpression := #setPatchValueIn:to:.
	self addPatchTile.
	self line1: 'setPatchValue:'.
