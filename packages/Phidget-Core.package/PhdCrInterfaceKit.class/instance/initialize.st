initialize-open-close
initialize
	"additionally reset my components."

	super initialize.
	
	inputs := LinkedList new.
	outputs := LinkedList new.
	sensors := LinkedList new.