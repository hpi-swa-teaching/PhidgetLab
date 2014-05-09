initialization
createAndAddStatusMorph

	statusMorph := BorderedMorph new
		borderWidth: 1;
		color: Color green muchLighter;
		yourself.
	self
		addMorph: statusMorph;
		updateStatus.