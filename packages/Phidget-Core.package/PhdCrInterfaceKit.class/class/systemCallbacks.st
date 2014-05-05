callbacks
systemCallbacks
	"This Method answers a Dictionary similar to the instance's userProcessBlocks.
	It may for instance contain message selectors sent when attaching or detaching a phidget, so the phidget components can be initialized."
	
	SystemCallbacks ifNotNil: [ ^ SystemCallbacks ].
	
	super systemCallbacks. "initialize"
	SystemCallbacks
		add: #InputChange -> #inputChanged;
		add: #OutputChange -> #outputChanged;
		add: #SensorChange -> #sensorChanged.
		
	^ SystemCallbacks