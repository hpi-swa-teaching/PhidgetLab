testing
test07inputPortRangeBorders

	[inputPort isInRange: 0] assert.
	[(inputPort isInRange: 9) = false] assert.