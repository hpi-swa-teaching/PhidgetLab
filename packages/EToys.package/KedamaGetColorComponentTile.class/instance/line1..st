tile protocol
line1: line1

	| label |
	self removeAllMorphs.

	label := 	StringMorph contents: (operatorOrExpression asString copyWithout: $:) font: ScriptingSystem fontForTiles.

	self addMorphBack: label.
	self addMorphBack: patchTile.
