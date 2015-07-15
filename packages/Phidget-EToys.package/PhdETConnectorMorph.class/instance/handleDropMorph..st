events-processing
handleDropMorph: anEvent

	super handleDropMorph: anEvent.
	anEvent contents plugTo: self.