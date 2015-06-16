setup
addToTurtleDisplayList: p

	| a |
	(p isKindOf: KedamaExamplerPlayer) ifFalse: [^ self].
	a := turtlesToDisplay copyWithout: p.
	turtlesToDisplay := a copyWith: p.
