initialization-support
addPatchTile

	| m1 desiredW m2 label |
	m1 := TilePadMorph new.
	label := 	StringMorph contents: 'setValueIn' font: ScriptingSystem fontForTiles.

	m2 := TileMorph new.
	m2 extent: 20@22.
	m2 minWidth: 20.
	m1 extent: (m2 extent + (2@2)).
	m1 setType: #Patch.
	m1 addMorph: m2.

	desiredW := m1 width + 6.
	self extent: (desiredW max: self basicWidth) @ self class defaultH.
	m1 position: (bounds center x - (m1 width // 2)) @ (bounds top + 1).

	self addMorphBack: m1.
	self addMorphFront: label.
	patchTile := m1.
