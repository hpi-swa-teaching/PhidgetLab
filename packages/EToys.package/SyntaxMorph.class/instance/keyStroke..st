event handling
keyStroke: evt
	"Handle a keystroke event."
	| spacer |
	evt keyCharacter = Character backspace ifTrue:
		[(owner notNil and: [owner isSyntaxMorph]) ifTrue:
			[owner isBlockNode ifTrue:
				["Delete a statement."
				(spacer := self submorphAfter) class == AlignmentMorph
						ifTrue: [spacer delete].
				self delete].
			]].
