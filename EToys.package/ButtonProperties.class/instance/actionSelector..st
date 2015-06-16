accessing
actionSelector: aSymbolOrString

	aSymbolOrString isEmptyOrNil ifTrue: [^actionSelector := nil].
	aSymbolOrString = 'nil' ifTrue: [^actionSelector := nil].
	actionSelector := aSymbolOrString asSymbol.
