drawing
drawOn: aCanvas
	"Draw it out"

	(bounds top > self displayBounds bottom or: [bounds bottom < self displayBounds top]) ifTrue: [^self].
	self perform: fitMethod.
	aCanvas fillRectangle: bounds color: self backgroundColor.
	[self shownStrings withIndexDo: [:str :idx| | x y bnd |
		x := (locations at: idx) + self offSet.
		x < bounds right ifTrue: [
			y := (x + (sizes at: idx)) min: (bounds right - 2).
			bnd := (x @ (bounds top + 2)) corner: (y @ (bounds bottom - 2)).
			aCanvas drawString: str in: bnd font: self font color: self color.
			idx < sizes size ifTrue: [
				x := (locations at: (idx + 1)) - 3 + self offSet.
				x < bounds right ifTrue: [
					aCanvas line: (x @ (bounds top)) to: (x @ (bounds top + 4 + self font height)) color: Color black
				].
			].
		].
	]] on: Error do: [:err| locations first ifNil: [^self]. err outer].
