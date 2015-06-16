building
cancelButton
	^ self
		buttonNamed: 'Cancel'
		action: #doCancel
		color: ColorTheme current cancelColor
		help: 'Cancel this login operation.'