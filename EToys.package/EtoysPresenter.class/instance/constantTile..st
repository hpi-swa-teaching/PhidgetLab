tile support
constantTile: anObject 
	"Answer a constant tile that represents the object"

	(anObject isColor) 
		ifTrue: 
			[^ColorTileMorph new typeColor: (ScriptingSystem colorForType: #Color)].
	^anObject newTileMorphRepresentative 
		typeColor: (ScriptingSystem colorForType: (self typeForConstant: anObject))