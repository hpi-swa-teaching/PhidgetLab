misc
overlaps: aPlayer 
	"Answer whether my costume overlaps that of another player"

	| goalCostume intersection myShadow goalShadow bb myRect goalRect |
	aPlayer ifNil: [^false].
	goalCostume := aPlayer costume.
	costume world == goalCostume world ifFalse: [^false].

	"check if the 2 player costumes intersect"
	intersection := costume bounds intersect: goalCostume bounds.
	(intersection width = 0 or: [intersection height = 0]) 
		ifTrue: [^false]
		ifFalse: 
			["check if the overlapping region is non-transparent"

			"compute 1-bit, black and white versions (stencils) of the intersecting  
			part of each morph's costume"

			myRect := intersection translateBy: 0 @ 0 - costume topLeft.
			myShadow := (costume imageForm contentsOfArea: myRect) stencil.
			goalRect := intersection translateBy: 0 @ 0 - goalCostume topLeft.
			goalShadow := (goalCostume imageForm contentsOfArea: goalRect) stencil.

			"compute a pixel-by-pixel AND of the two stencils.  Result will be black 
			(pixel value = 1) where black parts of the stencils overlap"
			bb := BitBlt toForm: myShadow.
			bb 
				copyForm: goalShadow
				to: 0 @ 0
				rule: Form and.

			"return TRUE if resulting form contains any black pixels"
			^(bb destForm tallyPixelValues second) > 0]