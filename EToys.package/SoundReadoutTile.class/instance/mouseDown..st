arrows
mouseDown: evt
	"Handle a mouse down event"

	| aPoint index isUp soundChoices adjustment |
	upArrow ifNotNil: [((isUp := upArrow containsPoint: (aPoint := evt cursorPoint)) or:  [downArrow containsPoint: aPoint])
		ifTrue:
			[soundChoices := self soundChoices.
			index := soundChoices indexOf: literal ifAbsent: [1].
			index > 0 ifTrue:
				[adjustment := isUp ifTrue: [1] ifFalse: [-1].
				self literal: (soundChoices atWrap: (index + adjustment))].
			self playSoundNamed: literal.
			^ self]].
	self soundNameFromUser ifNotNil:
		[:aSoundName |
			self literal: aSoundName.
			self playSoundNamed: literal]