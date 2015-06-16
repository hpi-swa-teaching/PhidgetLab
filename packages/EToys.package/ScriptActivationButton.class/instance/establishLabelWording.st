label
establishLabelWording
	"Set the label wording, unless it has already been manually edited"

	| itsName |
	itsName := target externalName.
	(self hasProperty: #labelManuallyEdited)
		ifFalse:
			[self label: (itsName, ' ', arguments first)].
	self setBalloonText: 
		('click to run the script "{1}" in player named "{2}"' translated format: {arguments first. itsName}).
