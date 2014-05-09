initialize-open-close
resetState
	"when closing/attaching, reset all outputs to false."

	super resetState.	
	self outputs do: [ :output | output value: false ].