visual properties
fillStyle: aFillStyle

	aFillStyle isColor 
		ifTrue: [self color: aFillStyle]	"so we will process it"
		ifFalse: [super fillStyle: aFillStyle].
