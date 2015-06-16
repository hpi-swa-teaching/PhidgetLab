other
handUserRandomTile
	"Hand the user a random-number tile, presumably to drop in the script"

	self currentHand attachMorph: RandomNumberTile new markAsPartsDonor makeAllTilesGreen

	