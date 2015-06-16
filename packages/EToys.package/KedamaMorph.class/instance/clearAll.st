setup
clearAll
	"Reset this StarSqueak world. All patch variables are cleared, all turtles are removed, and all demons are turned off."

	patchVarDisplayForm := Form extent: dimensions depth: 32.
	self initializePatch.
	self recreateMagnifiedDisplayForm.
	self initializeTurtlesDict.

	turtleCount := 0.
	lastTurtleID := 0.

	self color: Color black.

