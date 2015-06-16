menus
acceptIgnoring: aString
	"If I am inside a ScriptEditorMorph, tell my root to accept the new changes.  Ignore the argument, which is the string whose conents just changed."

	thisContext sender receiver removeProperty: #syntacticallyCorrectContents.
	self acceptIfInScriptor