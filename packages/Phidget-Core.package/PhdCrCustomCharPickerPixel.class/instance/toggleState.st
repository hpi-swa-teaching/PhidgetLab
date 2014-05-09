switching
toggleState
	"Toggle my state form true to false or v.v."

	self toggleStateQuiet.
		
	self triggerEvent: #pixelChanged.