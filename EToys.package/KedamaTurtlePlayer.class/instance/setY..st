commands and slots
setY: val

	| topEdgeMode bottomEdgeMode |
	y := val.
	y < 0.0 ifTrue: [
		topEdgeMode := world topEdgeMode.
		topEdgeMode == #wrap ifTrue: [
			y := y + world wrapY.
		].
		topEdgeMode == #stick ifTrue: [
			y := 0.0.
		].
		topEdgeMode == #bounce ifTrue: [
			y := val negated.
			headingRadians := Float twoPi - headingRadians.
		].
	].

	y >= world wrapY ifTrue: [
		bottomEdgeMode := world bottomEdgeMode.
		bottomEdgeMode == #wrap ifTrue: [
			y := y - world wrapY.
		].
		bottomEdgeMode == #stick ifTrue: [
			y := world wrapY - 0.0000001.
		].
		bottomEdgeMode == #bounce ifTrue: [
			y := world wrapY - 0.0000001 - (y - world wrapY).
			headingRadians := Float twoPi - headingRadians.
		].
	].
