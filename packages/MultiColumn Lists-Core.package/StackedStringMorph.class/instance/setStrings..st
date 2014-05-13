accessing
setStrings: arrayOfStrings

	strings _ arrayOfStrings.
	sizes _ Array new: strings size.
	locations _ Array new: strings size.
	self calculateSizes.
