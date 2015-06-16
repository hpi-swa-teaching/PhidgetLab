event handling
dominantColorWithoutTransparent: aForm
	| tally max maxi |
	aForm depth > 16 ifTrue:
		[^self dominantColorWithoutTransparent: (aForm asFormOfDepth: 16)].
	tally := aForm tallyPixelValues.
	max := maxi := 0.
	tally withIndexDo: [:n :i | n > max ifTrue: [ i ~= 1 ifTrue: [max := n. maxi := i]]].
	^ Color colorFromPixelValue: maxi - 1 depth: aForm depth
