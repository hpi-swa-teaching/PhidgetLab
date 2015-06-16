scripts-vector
- aPlayer
	"Treating Players like vectors, subtract aPlayer from me and return a new Player"

	| new |
	new := costume usableSiblingInstance player.
	new setX: self getX - aPlayer asPoint x.
	new setY: self getY - aPlayer asPoint y.
	^ new