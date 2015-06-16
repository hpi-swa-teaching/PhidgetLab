commands and slots
setX: val

	| leftEdgeMode rightEdgeMode |
	x := val.
	x < 0.0 ifTrue: [
		leftEdgeMode := world leftEdgeMode.
		leftEdgeMode == #wrap ifTrue: [
			x := x + world wrapX.
		].
		leftEdgeMode == #stick ifTrue: [
			x := 0.0.
		].
		leftEdgeMode == #bounce ifTrue: [
			x := val negated.
			headingRadians < Float pi
				ifTrue: [headingRadians := Float pi - headingRadians]
				ifFalse: [headingRadians := Float threePi - headingRadians]
		].
	].

	x >= world wrapX ifTrue: [
		rightEdgeMode := world rightEdgeMode.
		rightEdgeMode == #wrap ifTrue: [
			x := x - world wrapX.
		].
		rightEdgeMode == #stick ifTrue: [
			x := world wrapX - 0.0000001.
		].
		rightEdgeMode == #bounce ifTrue: [
			x := world wrapX - 0.0000001 - (x - world wrapX).
			headingRadians < Float pi
				ifTrue: [headingRadians := Float pi - headingRadians]
				ifFalse: [headingRadians := Float threePi - headingRadians]
		].
	].
