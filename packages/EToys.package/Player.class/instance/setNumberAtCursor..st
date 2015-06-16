slot getters/setters
setNumberAtCursor: aNumber
	"Place the given number into the morph residing at my costume's current cursor position"

	| renderedMorph aCostume |
	aCostume := self costume.
	((renderedMorph := aCostume renderedMorph) respondsTo: #valueAtCursor:) ifTrue: [^ renderedMorph valueAtCursor setNumericValue: aNumber]