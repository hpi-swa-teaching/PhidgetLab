other
storeCodeOn: aStream indent: tabCount 
	(submorphs notEmpty and: [submorphs first submorphs notEmpty]) 
		ifTrue: 
			[aStream nextPutAll: '(('.
			super storeCodeOn: aStream indent: tabCount.
			aStream nextPutAll: ') ~~ false)'.
			^self].
	aStream nextPutAll: ' true '