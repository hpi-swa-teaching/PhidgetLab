as yet unclassified
project: aProject actionBlock: aBlock

	theProject := aProject.
	actionBlock := aBlock.
	projectDetails := theProject world valueOfProperty: #ProjectDetails ifAbsent: [Dictionary new]