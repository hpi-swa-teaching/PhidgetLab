Etoys-Support
reconnectAll
	"Convenience method to close and reopen the connection to all phidgets."

	self allInstances do: [ :p | p reconnect ].
	self subclassesDo: [ :s | s reconnectAll ]
	