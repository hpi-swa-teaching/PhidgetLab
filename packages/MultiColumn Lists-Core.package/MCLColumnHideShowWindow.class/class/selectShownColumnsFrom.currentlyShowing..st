instance creation
selectShownColumnsFrom: columnNames currentlyShowing: indexesSet
	| array |
	
	array _ (Array new: columnNames size) atAllPut: false.
	indexesSet do: [:idx| array at: idx put: true].
	^self new selectShownColumnsFrom: columnNames defaultShown: array
