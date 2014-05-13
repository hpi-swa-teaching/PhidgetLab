accessing
showOnly: arrayOfIndexes
	showScreen ifNil: [showScreen _ Array new: strings size].
	showScreen atAllPut: false.
	arrayOfIndexes do: [:idx| showScreen at: idx put: true]
