initialization
drawButtons
	"Draws the cancel, the ok, the all and the nothing button on my surface."

	| padding buttonHeight upperButtonWidth lowerButtonWidth |
	padding := (self width // 31) min: (self height // 61).
	buttonHeight := padding * 5.
	upperButtonWidth := (self width - (4 * padding)) // 3.
	lowerButtonWidth := (self width - (3 * padding)) // 2.
	
	okButton
		extent: lowerButtonWidth @ buttonHeight;
		position: (self left + padding) @ (self bottom - (padding + buttonHeight)).
	cancelButton
		extent: lowerButtonWidth @ buttonHeight;
		position: (self left + (2 * padding) + lowerButtonWidth) @ (self bottom - (padding + buttonHeight)).
	allButton
		extent: upperButtonWidth @ buttonHeight;
		position: (self left + padding) @ (self bottom - (2 * (padding + buttonHeight))).
	noneButton
		extent: upperButtonWidth @ buttonHeight;
		position: (self left + (2 * padding) + upperButtonWidth) @ (self bottom - (2 * (padding + buttonHeight))).
	resetButton
		extent: upperButtonWidth @ buttonHeight;
		position: (self left + (3 * padding) + (2 * upperButtonWidth)) @ (self bottom - (2 * (padding + buttonHeight))).

	self 
		addMorph: okButton;
		addMorph: cancelButton;
		addMorph: allButton;
		addMorph: noneButton;
		addMorph: resetButton.