as yet unclassified
doOK

	self validateTheProjectName ifFalse: [^self].
	self delete.
	actionBlock value: (namedFields at: 'projectname') contents string withBlanksTrimmed.