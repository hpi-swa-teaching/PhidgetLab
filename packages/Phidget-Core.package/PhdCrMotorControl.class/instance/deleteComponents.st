initialize-open-close
deleteComponents
	"This method is called when the MotorControl is detached. It delets previously in 'initializeComponents' built components: motors and inputs."

	motors := LinkedList new.
	inputs := LinkedList new.