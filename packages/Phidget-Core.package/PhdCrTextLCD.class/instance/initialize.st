initialize-open-close
initialize
	"additionally reset my components."

	super initialize.
	
	textLCD := PhdCrCompTextLCD newWith: self.