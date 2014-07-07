testing
test03cannotBeCreatedWithNew

	| aBlock |
	aBlock := [ PhdImageLoader new ].
	
	self should: aBlock raise: Error