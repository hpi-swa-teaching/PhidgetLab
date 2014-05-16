etoys
getTextLCDRow1Scrolling
	"Answers wether row1 of an TextLCD Phidget scrolls or not."

	phidHandle isAttached ifFalse: [ ^ false ].
	^ phidHandle textLCD isRowScrolling: 1