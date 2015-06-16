background
addCardsFromAFile
	"Using the current background, create new cards by reading in data from a fileThe data are in each record are expected to be tab-delimited, and to occur in the same order as the instance variables of the current-background's cards "

	| aFileStream |
	(aFileStream := FileList2 modalFileSelector) ifNil: [^ Beeper beep].
	self addCardsFromString: aFileStream contentsOfEntireFile.
	aFileStream close