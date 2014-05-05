initialize-open-close
resetState
	"when closing/attaching, reset all motors to be stopped."

	super resetState.	
	self motors do: [ :motor |
		motor acceleration: 0.0.
		motor velocity: 0.0 ].