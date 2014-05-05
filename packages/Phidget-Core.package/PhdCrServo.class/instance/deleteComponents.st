initialize-open-close
deleteComponents
	"This method is called when the Phidget is detached. It resets previously in 'initializeComponents' built components: motors"

	motors := LinkedList new.