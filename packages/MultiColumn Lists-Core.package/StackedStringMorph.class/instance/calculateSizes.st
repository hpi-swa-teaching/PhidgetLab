accessing
calculateSizes
	"Figure out how big the strings are going to be"
	|fontSizer|

	fontSizer _ CharacterScanner new initializeStringMeasurer.
	self shownStrings withIndexDo: [:str :idx|
		sizes at: idx put: 50.
	].