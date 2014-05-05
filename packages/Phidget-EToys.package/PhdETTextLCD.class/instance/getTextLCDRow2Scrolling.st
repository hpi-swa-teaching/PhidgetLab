etoys
getTextLCDRow2Scrolling
	"Answers wether row2 of an TextLCD Phidget scrolls or not."

	phidHandle isAttached ifFalse: [ ^ false ].
	^ phidHandle textLCD isRowScrolling: 2