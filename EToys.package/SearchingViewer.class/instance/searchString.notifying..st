search
searchString: aString notifying: znak
	"Set the search string as indicated and carry out a search"

	searchString := aString asString.
	self doSearchFrom: searchString