initialization
initializeForm: aForm 

	form := aForm. 
	form fillColor: Color transparent.

	displayForm := (Form extent: aForm extent depth: 32).
	tmpForm := (Form extent: aForm extent depth: 32).
	tmpForm fillColor: Color black.

	super extent: form extent.
	self changed.
	self formChanged.
