initialization
maybeRemovePauseTickControls
	"If we're in the business of removing pauseTick controls when we're neither paused nor ticking, then do it now.  The present take is not to remove these controls, which explains why the body of this method is currently commented out."
	tickPauseButtonsShowing := false.
	"note: the following is to change color of the tick control appropriately"
	self assurePauseTickControlsShow.