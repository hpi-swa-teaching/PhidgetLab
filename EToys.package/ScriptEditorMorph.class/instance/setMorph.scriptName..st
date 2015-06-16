initialization
setMorph: anActorMorph scriptName: aString
	"Create a script editor for editing a named script."

	self setMorph: anActorMorph.
	scriptName := aString.
	self addMorphFront: self buttonRowForEditor.
	self updateStatus.
	firstTileRow := 2
