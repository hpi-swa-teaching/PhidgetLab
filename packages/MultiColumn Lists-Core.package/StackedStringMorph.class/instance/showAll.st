accessing
showAll
	showScreen ifNil: [showScreen _ Array new: strings size].
	showScreen atAllPut: true
