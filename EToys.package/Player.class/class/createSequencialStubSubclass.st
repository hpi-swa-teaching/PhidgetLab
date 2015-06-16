turtles
createSequencialStubSubclass

	| instVarString classInstVarString aName aClass |
	instVarString := KedamaSequenceExecutionStub instVarNames.
	classInstVarString := ''.
	aName := self chooseUniqueTurtleClassName.
	aClass := self subclass: aName instanceVariableNames: instVarString 
		classVariableNames: '' poolDictionaries: '' category: self categoryForUniclasses.
	classInstVarString size > 0 ifTrue:
		[aClass class instanceVariableNames: classInstVarString].
	aClass copyAllCategoriesUnobtrusivelyFrom: KedamaSequenceExecutionStub.
	^ aClass
