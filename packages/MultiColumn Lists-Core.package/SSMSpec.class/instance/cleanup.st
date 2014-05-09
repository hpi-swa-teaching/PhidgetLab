initialize-release
cleanup
	"Release our collections"

	backPointers := nil.
	currentRawList := nil.
	ssmColSpecs := OrderedCollection new.
	currentFilter := OrderedCollection new.
	currentSort := nil.
