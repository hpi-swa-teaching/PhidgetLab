actions
actionSelected
	self triggerEvent: #switched with: boolean not.
	self selected: boolean not