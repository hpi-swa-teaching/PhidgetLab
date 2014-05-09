initialisation
initialize

	super initialize.
	
	customChars := Array new: 8.
	1 to: 8 do: [ :i | customChars at: i put: (PhdCrCustomChar newWith: 0 and: 0) ].