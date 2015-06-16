initialization
fancyForPlayer: aPlayer getter: aGetter 
	"build a labeled readout"
	| aColor aLabel |
	self buildForPlayer: aPlayer getter: aGetter.
	aColor := Color
				r: 0.387
				g: 0.581
				b: 1.0.
	aLabel := StringMorph contents: variableName translated , ' = ' font: ScriptingSystem fontForTiles.
	aLabel setProperty: #watcherLabel toValue: true.
	self addMorphFront: aLabel.
	self addMorphFront: (aPlayer tileReferringToSelf borderWidth: 0;
			 layoutInset: 4 @ 0;
			 typeColor: aColor;
			 color: aColor;
			 bePossessive)