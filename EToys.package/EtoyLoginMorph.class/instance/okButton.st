building
okButton
	^ self
		buttonNamed: 'OK'
		action: #doOK
		color:ColorTheme current okColor
		help: 'Login into Squeak'