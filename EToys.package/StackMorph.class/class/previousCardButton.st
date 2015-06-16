navigation buttons
previousCardButton
	"Answer a button that will take the user to the preceding card in the stack"

	| aButton |
	aButton := SimpleButtonMorph new.
	aButton target: aButton; actionSelector: #goToPreviousCardInStack; label: '<'; color: Color yellow ; borderWidth: 0.
	aButton setNameTo: 'previous'.
	^ aButton