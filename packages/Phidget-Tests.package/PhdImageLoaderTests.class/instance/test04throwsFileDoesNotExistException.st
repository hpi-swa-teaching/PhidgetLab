testing
test04throwsFileDoesNotExistException

	| aBlock notExistingImageIdentifier |
	notExistingImageIdentifier := #dog.
	aBlock := [ PhdImageLoader default load: notExistingImageIdentifier ].
	
	self should: aBlock raise: FileDoesNotExistException