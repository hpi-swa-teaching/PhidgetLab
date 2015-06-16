misc
revealPlayerNamed: aSymbol in: aWorld 
	| getter |
	getter := aSymbol asGetterSelector.
	^ (self perform: getter)
		revealPlayerIn: aWorld