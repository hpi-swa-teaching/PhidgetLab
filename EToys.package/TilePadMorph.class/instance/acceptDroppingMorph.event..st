layout
acceptDroppingMorph: aMorph event: evt 
	"Accept the given morph within my bowels"

	| editor wasPossessive morphToUse |
	wasPossessive := submorphs notEmpty and: [submorphs first isPossessive].
	morphToUse := self morphToDropFrom: aMorph.
	self prepareToUndoDropOf: morphToUse.
	self removeAllMorphs.
	morphToUse position: self position.
	self addMorph: morphToUse.
	wasPossessive ifTrue: [morphToUse bePossessive].
	morphToUse lastTile addRetractArrow.	"if can"
	(editor := self topEditor) ifNotNil: [editor install]