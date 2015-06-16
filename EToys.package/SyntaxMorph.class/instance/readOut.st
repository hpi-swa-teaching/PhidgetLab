accessing
readOut
	"Find and return an UpdatingStringMorph, possibly in a NumericReadoutTile"

	^ ((self findA: NumericReadoutTile) ifNil: [^ nil]) findA: UpdatingStringMorph