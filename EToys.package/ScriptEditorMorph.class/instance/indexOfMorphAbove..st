dropping/grabbing
indexOfMorphAbove: aPoint
	"Return index of lowest morph whose bottom is above aPoint.
	Will return 0 if the first morph is not above aPoint"
	submorphs doWithIndex:
		[:m :i | m fullBounds bottom >= aPoint y ifTrue:
					[^ (i max: firstTileRow) - 1]].
	^ submorphs size