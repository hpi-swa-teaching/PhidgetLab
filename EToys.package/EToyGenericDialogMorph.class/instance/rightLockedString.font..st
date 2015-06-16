as yet unclassified
rightLockedString: aString font: aFont 

	^ self inARightColumn: {(StringMorph contents: aString font: aFont) lock}