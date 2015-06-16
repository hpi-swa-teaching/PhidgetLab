node types
rootTile
	^self 
		orOwnerSuchThat: [:m | m owner isNil or: [m owner isSyntaxMorph not]]