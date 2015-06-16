caching
releaseCachedState
	"Release any state that could be recomputed"

	super releaseCachedState.
	handWithTile := nil.
	self hibernate