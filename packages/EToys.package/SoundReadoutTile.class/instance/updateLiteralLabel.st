private
updateLiteralLabel
	"Update the wording emblazoned on the tile, if needed"

	super updateLiteralLabel.
	(self findA: UpdatingStringMorph) useSymbolFormat; lock