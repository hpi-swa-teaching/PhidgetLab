name
variableName: aSymbol
	"Set the receiver's variableName as indicated, and recompute corresponding getters and setters"

	variableName := aSymbol asSymbol.
	self computePlayerGetterAndSetterSelectors