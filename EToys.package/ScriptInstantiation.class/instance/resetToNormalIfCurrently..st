status control
resetToNormalIfCurrently: aStatus
	"If my status *had been* aStatus, quietly reset it to normal, without tampering with event handlers.  But get the physical display of all affected status morphs right"

	status == aStatus ifTrue:
		[status := #normal.
		self updateAllStatusMorphs]