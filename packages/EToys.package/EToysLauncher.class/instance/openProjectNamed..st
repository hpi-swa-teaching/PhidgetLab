actions
openProjectNamed: projectName 
	| newProject array |
	window
		ifNotNil: [window delete].
	(newProject := Project named: projectName)
		ifNil: [array := self fullPathForProjectNamed: projectName.
			ProjectLoading
				openFromDirectory: (FileDirectory on: array first)
				andFileName: array second]
		ifNotNil: [newProject enter]