initialization
setRoot: aString
	"Establish the assignment root, and update the label on the tile"

	assignmentRoot := aString.
	self updateLiteralLabel