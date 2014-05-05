etoys
setTextLCDScrollSeperator: aString
	"Returns the ScrollSeperator"
	
	phidHandle isAttached ifFalse: [ ^ self ].
	phidHandle textLCD seperator: aString asString.