tile protocol
line1: line1

	| label |
	self removeAllMorphs.

	label := 	StringMorph contents: 'turtleOf' font: ScriptingSystem fontForTiles.

	self addMorphBack: label.
	self addMorphBack: turtleTile.
