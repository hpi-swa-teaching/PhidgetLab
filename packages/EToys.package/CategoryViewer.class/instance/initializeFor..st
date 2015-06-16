initialization
initializeFor: aPlayer
	"Initialize the category pane to show the #basic category by default"

	^ self initializeFor: aPlayer categoryChoice: #basic
