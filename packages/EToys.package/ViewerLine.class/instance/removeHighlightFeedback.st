slot
removeHighlightFeedback
	"Remove any existing highlight feedback"

	(ActiveWorld submorphs select: [:m | m hasProperty: #highlight]) do:
		[:m | m delete]