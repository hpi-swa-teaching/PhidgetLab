testing
test03cannotBeCreatedWithNew

	| aBlock |
	aBlock := [ PhdETImageLoader new ].
	
	self should: aBlock raise: Error