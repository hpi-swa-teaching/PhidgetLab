initialization
initialize
	"Initialize the receiver fully, including adding all its relevant submorphs"

	| m1 m2 |
	super initialize.
	self vResizing: #shrinkWrap.
	self typeColor: (ScriptingSystem colorForType: #Number).
	self addArrows.
	m1 := StringMorph contents: 'random' translated font: ScriptingSystem fontForTiles.
	self addMorph: m1.
	m2 := UpdatingStringMorph contents: '180' font: ScriptingSystem fontForTiles.
	m2 target: self; getSelector: #literal; putSelector: #literal:.
	m2 position: m1 topRight.
	self addMorphBack: m2.
	literal := 180.
	self updateLiteralLabel.
	self makeAllTilesGreen