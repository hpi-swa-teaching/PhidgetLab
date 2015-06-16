layout
addToBlock: aMorph event: evt
	"Insert a new line of code.  Figure out who it goes before.  If evt Y is within an existing line (to the right of a tile), then replace that tile."

	| whereDropped dropBefore replace |
	whereDropped := "self pointFromWorld:" evt cursorPoint.
	dropBefore := self submorphs 
		detect: [:each | each isSyntaxMorph ifTrue: [
			whereDropped y < each top ifTrue: [true]	"before this one"
				ifFalse: [whereDropped y < each bottom 
							ifTrue: [replace := true]	"replace this one"
							ifFalse: [false]]]] "try next line"
		ifNone: [nil].
	(aMorph nodeClassIs: ReturnNode) ifTrue: [dropBefore := nil].
		"Returns are always at the end. (Watch out for comments)"

	dropBefore 
		ifNil: [self addMorphBack: aMorph]
		ifNotNil: [
			replace ifNotNil: [aMorph deselect.
				self replaceSubmorph: dropBefore by: aMorph.	"replace it!"
				^ dropBefore cleanupAfterItDroppedOnMe].	"now owned by no one"
			self addMorph: aMorph inFrontOf: dropBefore].
	self cleanupAfterItDroppedOnMe.
