accessing
displayListFrom: objectsArray
	| list sorted ssm |

	currentRawList := objectsArray.
	ssmColSpecs do: [:s| s initializeForNewList].
	currentSort isNil
		ifTrue: [sorted := objectsArray ]
		ifFalse: [sorted := objectsArray asSortedCollection: currentSort ].
	backPointers := OrderedCollection new: objectsArray size.
	list := Array streamContents: [:strm|
		sorted do: [:object|
			(currentFilter isNil or: [currentFilter isEmpty or: [(currentFilter allSatisfy: [:cf | ((ssmColSpecs at: cf first) displayStringFrom: object inDomain: false) = cf last])]]) ifTrue: [
				ssm := (StackedStringMorph on: (ssmColSpecs collect: [:col| col displayStringFrom: object inDomain: true])) 
					font: self listFont; 
					backgroundColor: self backgroundColor; 
					yourself.
				colorSelector ifNotNil: [ssm color: (object perform: colorSelector)].
				backPointers addLast: object.
				strm nextPut: ssm.
				].
			].
		].
	^list