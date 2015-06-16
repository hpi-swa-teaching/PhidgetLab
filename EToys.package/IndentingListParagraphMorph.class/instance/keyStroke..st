event handling
keyStroke: evt

	| char |
	char := evt keyCharacter.
	evt controlKeyPressed ifTrue: [
		char = Character cr ifTrue: [
			container model addSibling.
			^true	"we did handle it"
		].
		char = Character tab ifTrue: [
			container model addNewChildAfter: 0.
			^true	"we did handle it"
		].
	].
	^false	"we did not handle it"
