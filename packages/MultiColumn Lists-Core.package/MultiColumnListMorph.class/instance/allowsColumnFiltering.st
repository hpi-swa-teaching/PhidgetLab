controlOptions
allowsColumnFiltering
	^self controlOptions at: #columnFiltering ifAbsentPut: [true]
