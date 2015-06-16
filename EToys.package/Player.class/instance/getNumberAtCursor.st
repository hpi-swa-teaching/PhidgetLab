slot getters/setters
getNumberAtCursor
	"Answer the number borne by the object at my costume's current cursor position"

	| renderedMorph aCostume |
	aCostume := self costume.
	((renderedMorph := aCostume renderedMorph) respondsTo: #valueAtCursor:) ifTrue: [^ renderedMorph valueAtCursor getNumericValue]