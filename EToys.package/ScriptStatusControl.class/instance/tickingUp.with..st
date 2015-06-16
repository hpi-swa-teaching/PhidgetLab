mouse gestures
tickingUp: ignored with: alsoIgnored
	"The user hit the ticking control; make the status become one of ticking"

	scriptInstantiation status == #ticking
		ifFalse:
			[scriptInstantiation status: #ticking; updateAllStatusMorphs]
