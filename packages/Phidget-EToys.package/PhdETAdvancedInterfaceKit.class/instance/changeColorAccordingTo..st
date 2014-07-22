events
changeColorAccordingTo: isAttached

	self inputConnectors do: [:each | each changeColorAccordingTo: isAttached].
	self outputConnectors do: [:each | each changeColorAccordingTo: isAttached].
	self sensorConnectors do: [:each | each changeColorAccordingTo: isAttached].
	self ports do: [:each | each changeColorAccordingTo: isAttached].
	isAttached
		ifTrue:  [bin submorphs do: [:button | button loadColoredImage]]
		ifFalse: [bin submorphs do: [:button | button loadGrayImage]].