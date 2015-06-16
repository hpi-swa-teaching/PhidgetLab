code generation
storeCodeOn: aStream indent: tabCount 
	"Add in some smarts for division by zero."

	aStream nextPut: $(.
	submorphs first storeCodeOn: aStream indent: tabCount.
	aStream space.
	submorphs second storeCodeOn: aStream indent: tabCount.
	submorphs size > 2 
		ifTrue: 
			[(self catchDivideByZero: aStream indent: tabCount) 
				ifFalse: 
					[aStream space.
					(submorphs third) storeCodeOn: aStream indent: tabCount]].
	aStream nextPut: $)