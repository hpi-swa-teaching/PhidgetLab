background
makeNewBackground
	"Make a new background for the stack.  Obtain a name for it from the user.  It starts out life empty"

	| newPage |
	(newPage := PasteUpMorph newSticky) color: self color muchLighter.
	newPage borderWidth: currentPage borderWidth; borderColor: currentPage borderColor.
	self insertAsBackground: newPage resize: true. 
