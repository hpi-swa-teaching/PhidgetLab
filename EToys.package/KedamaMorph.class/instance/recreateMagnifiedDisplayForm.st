private
recreateMagnifiedDisplayForm

	magnifiedDisplayForm := Form extent: self dimensions * pixelsPerPatch depth: 32.
	self changed.
