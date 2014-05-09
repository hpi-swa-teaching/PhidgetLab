initialize-open-close
deleteComponents
	"This method is called when the RFID Phidget is detached. It delets previously in 'initializeComponents' built components: outputs"

	outputs := LinkedList new.