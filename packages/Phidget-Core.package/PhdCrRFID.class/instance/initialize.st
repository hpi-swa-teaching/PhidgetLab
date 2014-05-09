initialize-open-close
initialize
	"additionally reset my components."

	super initialize.
	
	rfid := PhdCrCompRFID newWith: self.
	led := PhdCrCompSimpleLED newWith: self.
	outputs := LinkedList new.