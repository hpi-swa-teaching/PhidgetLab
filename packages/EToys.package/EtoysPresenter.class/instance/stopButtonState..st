stop-step-go buttons
stopButtonState: newState
	"Get all stop buttons in my scope to show the correct state"

	self allStopButtons do:
		[:aButton | aButton state: newState]