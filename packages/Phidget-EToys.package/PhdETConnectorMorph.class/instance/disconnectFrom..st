connecting
disconnectFrom: aPlug
"This should always be called by a plug who wants to disconnect"

	self connected: false.
	plug := nil.