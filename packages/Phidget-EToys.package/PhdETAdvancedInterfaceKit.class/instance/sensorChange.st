events
sensorChange
	"This method is called if a sensorValue has changed.
	We update our visible sensorPorts here."
	
	self ports do: [ :port | port update: #sensorPort ].