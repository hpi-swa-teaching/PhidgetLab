etoys
getTextLCDRow2
	"Gets the text in row2 of a Phidget TextLCD."

	phidHandle isAttached ifFalse: [ ^ '' ].
	^ phidHandle textLCD textInRow: 2