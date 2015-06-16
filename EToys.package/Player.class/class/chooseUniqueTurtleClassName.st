other
chooseUniqueTurtleClassName
	| ii className |
	className := self name.
	[className last isDigit] whileTrue: [className := className copyFrom: 1 to: className size - 1].

	ii := BiggestSubclassNumber ifNil: [1] ifNotNil: [BiggestSubclassNumber+1].
	[className := (className , ii printString) asSymbol.
	 Smalltalk includesKey: className]
		whileTrue: [ii := ii + 1].
	BiggestSubclassNumber := ii.
	^ className	

