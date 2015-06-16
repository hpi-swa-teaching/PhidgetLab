accessing
borderColor: colorOrSymbolOrNil

	borderColor = colorOrSymbolOrNil ifFalse: [
		borderColor := colorOrSymbolOrNil.
		self bounds area < 40000
			ifTrue: [self invalidRect: self bounds]
			ifFalse: [(self bounds areasOutside: (self bounds insetBy: self borderWidth))
						do: [:r | self invalidRect: r]]].
