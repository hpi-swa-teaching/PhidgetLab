events
inputChange
	"This method is called if an inputValue has changed.
	We update our visible inputPorts here."
	self ports do: [:port | port update: #inputPort].