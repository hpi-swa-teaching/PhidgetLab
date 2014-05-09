accessing
sizes: arrayOfStringSizes
	arrayOfStringSizes size = self sizesSize ifFalse: [self error: 'Setting the wrong number of sizes!'].
	sizes _ arrayOfStringSizes.
	locations _ Array new: arrayOfStringSizes size.
