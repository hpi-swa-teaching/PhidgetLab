commands and slots
displayMax: anInteger

	displayMax := WordArray with: (anInteger asInteger min: 16rFFFFFFFF max: 0).
	self formChanged.
