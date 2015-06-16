menu
setLabel
	"Invoked from a menu, let the user change the label of the button"

	| newLabel |
	newLabel := UIManager default
		request:
'Enter a new label for this button'
		initialAnswer: self label.
	newLabel isEmpty ifFalse: [self label: newLabel font: nil].
