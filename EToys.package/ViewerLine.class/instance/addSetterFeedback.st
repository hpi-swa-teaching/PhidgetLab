slot
addSetterFeedback
	"Add screen feedback showing what would be torn off to make a setter"

	| aMorph |
	aMorph := RectangleMorph new bounds: ((submorphs fourth topLeft - (2@1)) corner: (submorphs last bottomRight) + (2@0)).
	aMorph useRoundedCorners; beTransparent; borderWidth: 2; borderColor: (Color r: 1.0 g: 0.548 b: 0.452); lock.
	aMorph setProperty: #highlight toValue: true.
	ActiveWorld addMorphFront: aMorph