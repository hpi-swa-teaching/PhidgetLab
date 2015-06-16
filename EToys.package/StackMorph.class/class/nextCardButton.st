navigation buttons
nextCardButton
	"Answer a button that advances the user to the next card in the stack"

	| aButton |
	aButton := SimpleButtonMorph new.
	aButton target: aButton; actionSelector: #goToNextCardInStack; label: '>'; color: Color yellow; borderWidth: 0.
	aButton setNameTo: 'next'.
	^ aButton