testing
test01isSingleton

	| anImageLoader sameImageLoader |
	anImageLoader := PhdImageLoader default.
	sameImageLoader := PhdImageLoader default.
	
	self assert: anImageLoader equals: sameImageLoader