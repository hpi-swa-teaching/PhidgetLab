miscellaneous
isPlayer: aPlayer ofReferencingTile: tile
	"Answer whether a given player is the object referred to by the given tile, or a sibling of that object."

	^ aPlayer class == self actualObject class