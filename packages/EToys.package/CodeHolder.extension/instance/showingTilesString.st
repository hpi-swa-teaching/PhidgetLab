*Etoys-tiles
showingTilesString
	"Answer a string characterizing whether tiles are currently showing or not"

	^ (self showingTiles
		ifTrue:
			['<yes>']
		ifFalse:
			['<no>']), 'tiles'