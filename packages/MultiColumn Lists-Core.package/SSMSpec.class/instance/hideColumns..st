accessing
hideColumns: columnNames

	ssmColSpecs withIndexDo: [:ssmcs :index| (columnNames includes: ssmcs columnName) ifTrue: [showScreen at: index put: false]].