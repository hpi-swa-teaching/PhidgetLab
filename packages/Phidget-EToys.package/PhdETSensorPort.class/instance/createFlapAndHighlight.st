event handling
createFlapAndHighlight

	|flap|
	flap := (self presenter viewMorph: self showFlap: false).
	self highlightFlapThumbnail: flap.