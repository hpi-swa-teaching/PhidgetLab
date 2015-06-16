new tiles
attachToHand
	"Adjust my look and attach me to the hand"

	self roundedCorners.
	ActiveHand attachMorph: self.
	Preferences tileTranslucentDrag
		ifTrue: [self lookTranslucent.
			self align: self center with: ActiveHand position "+ self cursorBaseOffset"]
		ifFalse: [self align: self topLeft with: ActiveHand position + self cursorBaseOffset]
