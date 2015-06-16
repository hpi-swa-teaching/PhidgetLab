running
startRunningIfPaused
	"If the receiver is paused, start it ticking"

	status == #paused ifTrue:
		[self status: #ticking.
		self updateAllStatusMorphs]