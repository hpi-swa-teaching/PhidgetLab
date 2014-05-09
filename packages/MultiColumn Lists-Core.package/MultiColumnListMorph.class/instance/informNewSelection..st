selections
informNewSelection: index

	(model isNil or: [setIndexSelector isNil]) ifTrue: [^self].
	model perform: setIndexSelector with: index