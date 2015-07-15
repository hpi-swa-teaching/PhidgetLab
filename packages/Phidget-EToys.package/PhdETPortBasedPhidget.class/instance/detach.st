events
detach
	"This method is called if the Phidget was detached.
	We update our visible ports here."
	
	self ports do: [ :port | port update ].