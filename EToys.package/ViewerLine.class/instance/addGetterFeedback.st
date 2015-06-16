slot
addGetterFeedback
	"Add feedback during mouseover of a getter"

	| aMorph endMorph |
	endMorph :=
		(#(touchesA: #seesColor: #overlaps:) includes: self elementSymbol)
			ifTrue:
				[submorphs eighth]
			ifFalse:
				[submorphs sixth].
	aMorph := RectangleMorph new useRoundedCorners bounds: ((submorphs fourth topLeft - (2 @ -1)) corner: (endMorph bottomRight + (2 @ -1))).
	aMorph beTransparent; borderWidth: 2; borderColor: (Color r: 1.0 g: 0.355 b: 0.839); lock.
	aMorph setProperty: #highlight toValue: true.
	ActiveWorld addMorphFront: aMorph

"
Color fromUser (Color r: 1.0 g: 0.355 b: 0.839)
"