etoys
getTextLCDRows
	"Returns the number of rows of the Text LCD Phidget"

	phidHandle isAttached ifFalse: [ ^ 0 ].
	^ phidHandle textLCD rows