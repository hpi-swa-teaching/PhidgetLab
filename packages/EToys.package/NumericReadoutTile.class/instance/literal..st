accessing
literal: anObject 
	literal := anObject.
	self updateLiteralLabel.
	self labelMorph
		ifNotNil: [:label | label informTarget]