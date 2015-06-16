other
chooseUniqueClassName
	| ii className |
	ii := BiggestSubclassNumber ifNil: [1] ifNotNil: [BiggestSubclassNumber+1].
	[className := (self name , ii printString) asSymbol.
	 Smalltalk includesKey: className]
		whileTrue: [ii := ii + 1].
	BiggestSubclassNumber := ii.
	^ className	

