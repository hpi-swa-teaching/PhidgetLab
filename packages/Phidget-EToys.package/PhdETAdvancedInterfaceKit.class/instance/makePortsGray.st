events
makePortsGray
	self inputConnectors do: [:each | each setColorOnAttached: false].
	self outputConnectors do: [:each | each setColorOnAttached:  false].
	self sensorConnectors do: [:each | each setColorOnAttached: false].
	self ports do: [:each | each loadAppropriateColoredImage].