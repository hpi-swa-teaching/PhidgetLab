events
outputChange
	"This method is called if an outputValue has changed.
	We update our visible outputPorts here."
	
	self ports do: [ :port | port update: #outputPort ].