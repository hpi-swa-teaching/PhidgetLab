debug support
copyAllMethodsAgain

	| c result |
	c := turtles class.
	result := (ClassBuilder new)
		name: c name
		inEnvironment: c environment
		subclassOf: c superclass
		type: c typeOfClass
		instanceVariableNames: KedamaTurtleVectorPlayer instanceVariablesString
		classVariableNames: KedamaTurtleVectorPlayer classVariablesString
		poolDictionaries: KedamaTurtleVectorPlayer sharedPoolsString
		category: c category.
	turtles class copyAllCategoriesUnobtrusivelyFrom: KedamaTurtleVectorPlayer.
	sequentialStub ifNotNil: [sequentialStub class copyAllCategoriesUnobtrusivelyFrom: KedamaSequenceExecutionStub].
