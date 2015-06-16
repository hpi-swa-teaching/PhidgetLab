slot getters/setters
setValueAtCursor: aPlayer
	| renderedMorph aCostume |
	aCostume := self costume.
	((renderedMorph := aCostume renderedMorph) respondsTo: #valueAtCursor:) ifTrue: [^ renderedMorph valueAtCursor: aPlayer costume].

	(aCostume respondsTo: #valueAtCursor:) ifTrue: [aCostume valueAtCursor: aPlayer costume]