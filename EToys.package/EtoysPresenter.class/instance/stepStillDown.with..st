stop-step-go buttons
stepStillDown: dummy with: theButton
	"The step button is still down; get temporary button feedback right and step all and then get all button feedback right again"

	self stepButtonState: #pressed.
	self stopButtonState: #off.
	associatedMorph stepAll.
	associatedMorph world displayWorld.
	self stepButtonState: #off.
	self stopButtonState: #on
