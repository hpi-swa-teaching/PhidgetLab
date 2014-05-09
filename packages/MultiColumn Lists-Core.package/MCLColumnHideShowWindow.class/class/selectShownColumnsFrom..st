instance creation
selectShownColumnsFrom: columnNames
	^self new selectShownColumnsFrom: columnNames defaultShown: ((Array new: columnNames size) atAllPut: true)
