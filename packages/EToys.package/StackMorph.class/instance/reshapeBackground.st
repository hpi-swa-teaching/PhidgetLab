card in a stack
reshapeBackground
	"Abandon any memory of variable-name preferences for the current background, and reassess its instance structure"

	^ self currentPage reshapeBackground 
