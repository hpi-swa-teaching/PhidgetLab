updating
setStatus: aNumber

	
	self masterValue: aNumber.
	self speed: (self calcSpeed: aNumber).