as yet unclassified
okButton
	^ self
		buttonNamed: 'OK'
		action: #doOK
		color: ColorTheme current okColor
		help: 'Change my name and continue publishing.'