initialization
intoWorld: aWorld
	super intoWorld: aWorld.
	aWorld ifNotNil:[self updateStatus].