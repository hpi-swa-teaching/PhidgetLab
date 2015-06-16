drawing
drawOn: aCanvas
	"Display this StarSqueak world."

	| result |
	"Time millisecondClockValue printString displayAt: 0@0."
	self player ifNil: [^ aCanvas fillRectangle: (self bounds) color: self color].
	patchVarDisplayForm fillColor: self color.
	patchesToDisplay do: [:p |
		p displayPatchVariableOn: patchVarDisplayForm.
	].
	self drawTurtlesOnForm: patchVarDisplayForm.
	pixelsPerPatch = 1 ifTrue: [
		aCanvas drawImage: patchVarDisplayForm at: bounds origin.
	] ifFalse: [
		result := self zoom: patchVarDisplayForm into: magnifiedDisplayForm factor: pixelsPerPatch.
		result ifNil: [
			aCanvas warpImage: patchVarDisplayForm transform: (MatrixTransform2x3 withScale: pixelsPerPatch) at: self innerBounds origin.
		] ifNotNil: [
			aCanvas drawImage: magnifiedDisplayForm at: bounds origin.
		]
	].

	autoChanged ifTrue: [self changed].

