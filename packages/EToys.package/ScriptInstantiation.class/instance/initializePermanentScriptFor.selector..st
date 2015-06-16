anonymity
initializePermanentScriptFor: aPlayer selector: aSelector
	"Initialize the receiver on behalf of the player, setting its status to #normal and giving it the given selector"

	player := aPlayer.
	status := #normal.
	selector := aSelector