etoys
getTextLCDRow1
	"Gets the text in row1 of a Phidget TextLCD."

	phidHandle isAttached ifFalse: [ ^ '' ].
	^ phidHandle textLCD textInRow: 1