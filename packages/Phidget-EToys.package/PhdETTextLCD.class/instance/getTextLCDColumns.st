etoys
getTextLCDColumns
	"Returns the number of columnss of the Text LCD Phidget"

	phidHandle isAttached ifFalse: [ ^ 0 ].
	^ phidHandle textLCD columns