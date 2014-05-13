drawing
drawOn: aCanvas
	"Draw it out"

	(bounds top > self displayBounds bottom or: [bounds bottom < self displayBounds top]) ifTrue: [^self].
	self perform: fitMethod.
	aCanvas fillRectangle: bounds color: self backgroundColor.
	[self shownStrings withIndexDo: [:str :idx| | x y bnd |
		x _ locations at: idx.
		x < bounds right ifTrue: [
			y _ (x + (sizes at: idx)) min: (bounds right - 2).
			bnd _ (x @ (bounds top + 2)) corner: (y @ (bounds bottom - 2)).
			aCanvas drawString: str in: bnd font: self font color: self color.
			idx < sizes size ifTrue: [
				x _ (locations at: (idx + 1)) - 3.
				x < bounds right ifTrue: [
					aCanvas line: (x @ (bounds top)) to: (x @ (bounds top + 4 + self font height)) color: Color black
				].
			].
		].
	]] on: Error do: [:err| locations first ifNil: [^self]. err outer].
