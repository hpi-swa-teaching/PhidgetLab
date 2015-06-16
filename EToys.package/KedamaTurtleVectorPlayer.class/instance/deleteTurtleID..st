player commands
deleteTurtleID: who

	| whoArray whoIndex |
	whoArray := arrays at: 1.
	whoIndex := whoArray indexOf: who ifAbsent: [^ self].
	deletingIndex := whoIndex - 1.
	arrays withIndexDo: [:array :index | | newArray |
		newArray := (array copyFrom: 1 to: whoIndex - 1), (array copyFrom: whoIndex + 1 to: array size).
		arrays at: index put: newArray.
	].
	whoTableValid := false.
	turtleMapValid := false.
