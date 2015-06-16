turtles
createTurtleSubclass

	| instVarString classInstVarString aName aClass |
	instVarString := KedamaTurtleVectorPlayer instVarNames.
	classInstVarString := ''.
	aName := self chooseUniqueTurtleClassName.
	aClass := self subclass: aName instanceVariableNames: instVarString 
		classVariableNames: '' poolDictionaries: '' category: self categoryForUniclasses.
	classInstVarString size > 0 ifTrue:
		[aClass class instanceVariableNames: classInstVarString].
	aClass copyAllCategoriesUnobtrusivelyFrom: KedamaTurtleVectorPlayer.
	^ aClass
