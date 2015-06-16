accessing
literal: anObject

	literal := anObject.
	self updateLiteralLabel.
	self acceptNewLiteral.		"Show that we are out of date, install is needed"
