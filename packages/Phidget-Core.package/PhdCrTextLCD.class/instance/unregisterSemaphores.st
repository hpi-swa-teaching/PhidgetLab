initialize-open-close
unregisterSemaphores
	"Unregister the semaphores which were previously registered with 'self registerSemaphores'.
	 Ignore my #TextChange event (because it is not an external object)"

	| mySema |
	self opened: false.
	mySema := semaphores at: #TextChange.
	mySema signal.
	semaphores removeKey: #TextChange.
	super unregisterSemaphores.
	semaphores at: #TextChange put: mySema.