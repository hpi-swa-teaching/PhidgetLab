etoys
getTextLCDScrollSeperator
	"Returns the ScrollSeperator"
	
	phidHandle isAttached ifFalse: [ ^ '' ].
	^ phidHandle textLCD seperator