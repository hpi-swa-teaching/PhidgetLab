initialize-open-close
resetState
	"when closing/attaching, turn led and all outputs off."

	super resetState.	
	self led isOn: false.
	self outputs do: [ :output | output value: false. ].