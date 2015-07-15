connecting
connectWith: aPlug
"This should always be called by a plug who wants to connect with this connector"

	plug := aPlug.	
	self positionPlug.	
	self connected: true.

	