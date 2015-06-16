initalization support
addPlayerTile

	| m1 desiredW m2 label |
	self removeAllMorphs.
	m1 := TilePadMorph new.
	label := 	StringMorph contents: 'bounce on' translated font: ScriptingSystem fontForTiles.

	m2 := TileMorph new.
	m2 extent: 20@22.
	m2 minWidth: 20.
	m1 extent: (m2 extent + (2@2)).
	m1 setType: #Player.
	m1 addMorph: m2.
	desiredW := m1 width + 6.

	m2 := ColorTileMorph new.

	"m3 := Morph new extent: 12@8; color: (Color r: 0.8 g: 0.0 b: 0.0)."
	desiredW := desiredW + m2 width.
	self extent: (desiredW max: self basicWidth) @ self class defaultH.
	m1 position: (bounds center x - (m1 width // 2)) @ (bounds top + 1).
	"m2 addMorph: m3."
	m2 position: ((bounds center x - (m2 width // 2)) + 3)@ (bounds top + 1).
	self addMorphBack: m2.
	self addMorphFront: m1.
	self addMorphFront: label.
	playerTile := m1.
	colorTile := m2.
