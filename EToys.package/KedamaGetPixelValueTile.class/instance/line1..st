initialization support
line1: line1

	| label |
	self removeAllMorphs.

	label := 	StringMorph contents: 'patchValueIn' translated font: ScriptingSystem fontForTiles.

	self addMorphBack: label.
	self addMorphBack: patchTile.
