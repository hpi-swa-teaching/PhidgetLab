controlOptions
allowsUserSelection
	^self controlOptions at: #userSelection ifAbsentPut: [true]
