etoys
setTextLCDRow1Scrolling: aBoolean
	"Sets wether row1 of an TextLCD Phidget scrolls or not."

	phidHandle isAttached ifFalse: [ ^ self ].
	phidHandle textLCD scrolling: aBoolean inRow: 1.