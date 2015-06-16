scripts-vector
* aNumber
	"Treating Players like vectors, return a new Player that is myself scaled by the number"

	| new |
	new := costume usableSiblingInstance player.
	new setX: self getX * aNumber asPoint x.
	new setY: self getY * aNumber asPoint y.
	^ new
