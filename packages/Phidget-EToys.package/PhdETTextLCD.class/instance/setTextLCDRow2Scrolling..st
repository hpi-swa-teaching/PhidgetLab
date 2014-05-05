etoys
setTextLCDRow2Scrolling: aBoolean
	"Sets wether row2 of an TextLCD Phidget scrolls or not."

	phidHandle isAttached ifFalse: [ ^ self ].
	phidHandle textLCD scrolling: aBoolean inRow: 2.