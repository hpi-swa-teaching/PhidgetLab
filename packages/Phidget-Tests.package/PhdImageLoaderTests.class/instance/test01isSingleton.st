testing
test01isSingleton

	| anImageLoader sameImageLoader |
	anImageLoader := PhdETImageLoader default.
	sameImageLoader := PhdETImageLoader default.
	
	self assert: anImageLoader equals: sameImageLoader