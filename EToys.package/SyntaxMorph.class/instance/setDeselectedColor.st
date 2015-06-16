selection
setDeselectedColor
	"The normal color of the tile, stored with the tile"
	| deselectedColor deselectedBorderColor |

	deselectedColor := self valueOfProperty: #deselectedColor ifAbsent: [nil].
	deselectedBorderColor := self valueOfProperty: #deselectedBorderColor ifAbsent: [nil].
	deselectedColor ifNotNil: [
		deselectedColor := self scaleColorByUserPref: deselectedColor].
	deselectedBorderColor ifNotNil: [
		deselectedBorderColor := self scaleColorByUserPref: deselectedBorderColor].
	self 
		color: (deselectedColor ifNil: [Color transparent]);
		borderColor: (deselectedBorderColor ifNil: [Color transparent])