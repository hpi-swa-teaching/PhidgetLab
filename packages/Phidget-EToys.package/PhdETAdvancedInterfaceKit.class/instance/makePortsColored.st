events
makePortsColored
	self inputConnectors do: [:each | each setColorOnAttached: true].
	self outputConnectors do: [:each | each setColorOnAttached: true].
	self sensorConnectors do: [:each | each setColorOnAttached: true].
	self ports do: [:each | each changeToAppropiateColor].