accessing
establishEtoyLabelWording
	"Set the label wording, unless it has already been manually edited"

	| itsName |

	self isTileScriptingElement ifFalse: [^self].
	itsName := target externalName.
	self addTextToButton: itsName, ' ', arguments first.
	visibleMorph setBalloonText: 
		('click to run the script "{1}" in player named "{2}"' translated format: {arguments first. itsName}).
