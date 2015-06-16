background
addCardsFromFile: fileStream
	"Using the current background, take tab delimited data from the file to create new records."

	| aString |
	(aString := fileStream contentsOfEntireFile) isEmptyOrNil ifTrue: [^ Beeper beep].
	self addCardsFromString: aString