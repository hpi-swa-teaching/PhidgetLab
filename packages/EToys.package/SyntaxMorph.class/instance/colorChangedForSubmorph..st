change reporting
colorChangedForSubmorph: colorPatch
	| sel newSel cc ms phrase completeMsg |
	"reporting a color change"

	(self nodeClassIs: MessageNode) ifFalse: [^ nil].
	(sel := self selector) ifNil: [^ nil].
	(Color colorNames includes: sel) | (sel == #r:g:b:) ifFalse: [^ nil].
		"a standard color name"
	"replace self with new tiles from the color"
	(newSel := (cc := colorPatch color) name) 
		ifNil: [ms := MessageSend receiver: Color selector: #r:g:b: arguments: 
				(Array with: cc red with: cc green with: cc blue).
			phrase := ms asTilesIn: Color globalNames: true]
		ifNotNil: [ms := MessageSend receiver: Color selector: newSel arguments: #().
			phrase := ms asTilesIn: Color globalNames: true].
	self deletePopup.
	completeMsg := self isNoun ifTrue: [self] ifFalse: [owner].
	completeMsg owner replaceSubmorph: completeMsg by: phrase.
	"rec setSelection: {rec. nil. rec}."
	phrase acceptIfInScriptor.