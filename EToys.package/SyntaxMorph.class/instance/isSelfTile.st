node types
isSelfTile

	^ parseNode class == VariableNode and: [self decompile asString = 'self ']
	