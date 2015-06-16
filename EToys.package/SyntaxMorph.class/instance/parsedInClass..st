accessing
parsedInClass: x

	self parsedInClass == x ifFalse: [self error: 'inconsistent value']