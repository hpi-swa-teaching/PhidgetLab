menu
setActWhen

	| selections |
	selections := #(mouseDown mouseUp mouseStillDown).
	actWhen := UIManager default 
		chooseFrom: (selections collect: [:t | t translated])
		values: selections
		title: 'Choose one of the following conditions' translated.