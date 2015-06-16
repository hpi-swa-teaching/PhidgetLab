tile protocol
line1: line1

	| label |
	self removeAllMorphs.

	label := 	StringMorph contents: 'distanceTo' translated font: ScriptingSystem fontForTiles.

	self addMorphBack: label.
	self addMorphBack: turtleTile.
