etoys
setTextLCDRow2: aString
	"Sets the text in row2 of a Phidget TextLCD."

	phidHandle isAttached ifFalse: [ ^ self ].
	phidHandle textLCD displayString: aString inRow: 2.