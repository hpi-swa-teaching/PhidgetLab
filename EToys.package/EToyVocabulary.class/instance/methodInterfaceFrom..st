initialization
methodInterfaceFrom: elementTuple
	"Tedious revectoring:  The argument is a tuple of the sort that #additionsToViewerCategory: answers a list of; answer a MethodInterface"

	^ elementTuple first == #command
		ifTrue:
			[MethodInterface new initializeFromEToyCommandSpec: elementTuple category: nil]
		ifFalse:  "#slot format"
			[MethodInterface new initializeFromEToySlotSpec: elementTuple]