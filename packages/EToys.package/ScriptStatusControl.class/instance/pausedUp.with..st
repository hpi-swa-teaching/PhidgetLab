mouse gestures
pausedUp: ignored with: alsoIgnored
	"The paused button was hit -- respond to it"

	(scriptInstantiation status == #paused)
		ifFalse:
			[scriptInstantiation status: #paused; updateAllStatusMorphs]
