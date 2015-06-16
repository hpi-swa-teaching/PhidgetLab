dropping/grabbing
cleanupAfterItDroppedOnMe
	"A tile just dropped into me.  Clean up"

	self layoutChanged.  "** Isn't this already implied by the addMorph: ?"
	"Auto-accept on drop if in a scriptor"
	self acceptIfInScriptor.