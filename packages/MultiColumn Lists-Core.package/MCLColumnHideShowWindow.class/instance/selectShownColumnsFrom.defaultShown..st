initialize-release
selectShownColumnsFrom: columnNames defaultShown: selectedArray
	self buildWindowFrom: columnNames selected: selectedArray.
^self forkedSelection
