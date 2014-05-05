private
doPostCloseOperations
	"Reset state when the Phidget has been closed,"

	self
		opened: false;
		unregisterSemaphores;
		deleteComponents.