etoys
setTextLCDRow1: aString
	"Sets the text in row1 of a Phidget TextLCD."

	phidHandle isAttached ifFalse: [ ^ self ].
	phidHandle textLCD displayString: aString inRow: 1.