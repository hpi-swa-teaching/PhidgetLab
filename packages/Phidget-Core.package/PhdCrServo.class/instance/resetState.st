initialize-open-close
resetState
	"when closing/attaching, turn all motors off."

	super resetState.	
	self motors do: [ :motor | motor isEngaged: false. ].