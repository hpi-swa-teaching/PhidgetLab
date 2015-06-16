slot getters/setters
getCharacterAtCursor
	"Answer the value of the text cursor"

	| aLoc aTextMorph aString |
	aLoc := (aTextMorph := self costume renderedMorph) cursor.
	aString := aTextMorph text string.
	^ (aString at: aLoc ifAbsent: ['·']) asString