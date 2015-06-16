stop-step-go buttons
goButtonState: newState
	"Get all go buttons in my scope to show the correct state"

	self allGoButtons do:
		[:aButton | aButton state: newState]