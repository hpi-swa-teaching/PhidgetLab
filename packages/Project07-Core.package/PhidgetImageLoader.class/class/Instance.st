accessing
Instance

	^ Instance
		ifNil: [Instance := super new]