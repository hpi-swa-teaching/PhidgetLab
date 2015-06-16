slot getters/setters
getPageNumber
	"Answer the current page number of my book"

	| aBook |
	^ (aBook := self bookEmbodied) pageNumberOf: aBook currentPage