accessing
currentValueDomain
	^valueDomain asSortedCollection asOrderedCollection reject: [:a| a withBlanksTrimmed = '']