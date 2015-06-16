running
stopTicking
	"If I'm ticking stop, else do nothing"

	status == #ticking ifTrue:
		[self status: #paused.
		self updateAllStatusMorphs]