scripts-standard
makeNewDrawingIn: paintPlacePlayer 
	| paintPlace |
	((paintPlacePlayer isNil 
		or: [((paintPlace := paintPlacePlayer costume) isKindOf: PasteUpMorph) not]) 
			or: [paintPlace isInWorld not]) 
			ifTrue: 
				[^self 
					inform: 'Error: not a plausible
place in which to make
a new drawing'].
	paintPlace makeNewDrawingWithin