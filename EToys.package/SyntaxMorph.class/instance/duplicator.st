pop ups
duplicator
	"Return the icon to duplicate this tile."
	| handle handleSpec colorToUse iconName form |

	handleSpec := Preferences haloSpecifications at: 11.	"duplicate"
	handle := EllipseMorph
			newBounds: (Rectangle center: 10@10 extent: 16 asPoint)
			color: (colorToUse := Color colorFrom: handleSpec color).
	iconName := handleSpec iconSymbol.
	form := ScriptingSystem formAtKey: iconName.	"#'Halo-Dup'"
	handle addMorphCentered: (ImageMorph new
				image: form; 
				color: colorToUse makeForegroundColor;
				lock).
	handle on: #mouseDown send: #dupTile: to: self.
	^ handle