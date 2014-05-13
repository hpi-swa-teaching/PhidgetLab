accessing
newList
	"Convert the list to a list of StackedStringMorphs"
	list := specifications displayListFrom: origObjects.
	self recalcSizes.
	self moveSelectionIntoView
