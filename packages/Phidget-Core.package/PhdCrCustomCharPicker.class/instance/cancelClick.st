event handling
cancelClick
	"Event which is triggert by clicking the cancel-button."

	self triggerEvent: #characterPicked withArguments: {index. initialCustomChar}.
	self delete.