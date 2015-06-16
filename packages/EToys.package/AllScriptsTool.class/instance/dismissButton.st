initialization
dismissButton
	"Answer a button whose action would be to dismiss the 
	receiver "
	| aButton |
	aButton := super dismissButton.
	aButton setBalloonText: 'Click here to remove this tool from the screen; you can get another one any time you want from the Widgets flap' translated.
	^ aButton