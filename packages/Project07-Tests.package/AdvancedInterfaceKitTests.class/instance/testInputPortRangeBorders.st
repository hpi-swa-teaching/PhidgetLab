testing
testInputPortRangeBorders

	[inputPort isInRange: 0] assert.
	[(inputPort isInRange: 9) = false] assert.