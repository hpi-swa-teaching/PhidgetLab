macpal
scriptPerformer
	"Guard against obscure circumstance in which the tile itself has an associated Player, which then might be asked to interact in inappropriate ways with, for example, an UpdatingStringMorph to provide the literal for a RandomNumberTile.  This is at best a finger in the dike.  Still very unsatisfactory!"
	^ self