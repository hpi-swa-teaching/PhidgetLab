change reporting
colorChangedForSubmorph: aSubmorph
	"Invoked when the user selects a new color on a colorTile or a color-seer-tile; need to recompile the script."
	self acceptNewLiteral
	owner ifNil: [^ self].
	owner isTileLike ifFalse: [owner colorChangedForSubmorph: aSubmorph].