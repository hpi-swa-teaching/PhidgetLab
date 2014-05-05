initialize-open-close
deleteComponents
	"This method is called when the InterfaceKit is detached. It delets previously in 'initializeComponents' built components: sensors, inputs, outputs."

	sensors := LinkedList new.
	inputs := LinkedList new.
	outputs := LinkedList new.