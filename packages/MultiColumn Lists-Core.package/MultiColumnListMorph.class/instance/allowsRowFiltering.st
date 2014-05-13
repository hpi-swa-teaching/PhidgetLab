controlOptions
allowsRowFiltering
	^self controlOptions at: #rowFiltering ifAbsentPut: [true]
