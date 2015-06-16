drawing
lookTranslucent

	self setDeselectedColor.
	super color: (self color alpha: 0.25).
	submorphs do: [:mm | (mm respondsTo: #lookTranslucent) 
		ifTrue: [mm lookTranslucent]
		ifFalse: ["mm color: color"]].
