pop ups
dismisser
	"Return the icon to delete this line of tiles.  I am an entire line in a block."
	| handle handleSpec colorToUse iconName form |

	(owner isSyntaxMorph and: [owner nodeClassIs: BlockNode]) ifFalse: [^ nil].
	handleSpec := Preferences haloSpecifications fourth.	"dismiss"
	handle := EllipseMorph
			newBounds: (Rectangle center: 10@10 extent: 16 asPoint)
			color: (colorToUse := Color colorFrom: handleSpec color).
	iconName := handleSpec iconSymbol.
	form := ScriptingSystem formAtKey: iconName.	"#'Halo-Dismiss'"
	handle addMorphCentered: (ImageMorph new
				image: form; 
				color: colorToUse makeForegroundColor;
				lock).
	handle on: #mouseDown send: #deleteLine to: self.
	^ handle