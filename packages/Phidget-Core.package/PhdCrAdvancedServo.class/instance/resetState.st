initialize-open-close
resetState
	"when closing/attaching, reset acceleration."

	super resetState.	
	self motors do: [ :motor | motor acceleration: 0.0. ].