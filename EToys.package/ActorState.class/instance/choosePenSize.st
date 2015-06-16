pen
choosePenSize
	| sz |
	sz := UIManager default chooseFrom: (1 to: 10)  values: (1 to: 10).
	sz ifNotNil: [penSize := sz]