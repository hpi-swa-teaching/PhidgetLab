testing
test04throwsFileDoesNotExistException

	| aBlock notExistingImageIdentifier |
	notExistingImageIdentifier := #dog.
	aBlock := [ PhdETImageLoader default load: notExistingImageIdentifier ].
	
	self should: aBlock raise: FileDoesNotExistException