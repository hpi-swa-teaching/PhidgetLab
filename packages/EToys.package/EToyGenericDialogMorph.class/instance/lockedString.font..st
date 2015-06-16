as yet unclassified
lockedString: aString font: aFont
	^ self inAColumn: {(StringMorph contents: aString font: aFont) lock}