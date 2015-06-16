initialization
variableName: aSymbol type: aType definingMorph: aMorph morphGetSelector: getterSymbol morphPutSelector: putterSymbol
	"Initialize the receiver as indicated"

	variableName := aSymbol asSymbol.
	type := aType.
	definingMorph := aMorph.
	morphGetSelector := getterSymbol.
	morphPutSelector := putterSymbol.
	self computePlayerGetterAndSetterSelectors