stop-step-go buttons
stepButtonState: newState
	"Get all step buttons in my scope to show the correct state"

	self allStepButtons do:
		[:aButton | aButton state: newState]