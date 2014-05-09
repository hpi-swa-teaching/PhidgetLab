instance creation
defaultCheckedMorph: label 
	| checkedMorph |
	checkedMorph _ RectangleMorph new initialize.
	checkedMorph color: Color lightGray.
	checkedMorph borderInset.
	checkedMorph height: label height + 2.
	checkedMorph width: label height + 2.
	checkedMorph addMorphCentered: (PolygonMorph
				vertices: { 10@1. 12@3. 4@11. 1@6. 2@5. 4@7.}
				color: Color gray
				borderWidth: 1
				borderColor: #raised).
	^ checkedMorph