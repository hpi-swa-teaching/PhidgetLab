private
displayTextChanged
	"signal the semaphore for this event. This is the only Phidget that needs an event semaphore signaled here instead of in the plugin because the #TextChange event is not native to phidget21 library."

	(semaphores at: #TextChange) signal.