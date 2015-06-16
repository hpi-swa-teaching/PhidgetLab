player commands
getTurtleOf: aBreedPlayer

	| ret xy |
	xy := self getXAndY.
	ret := aBreedPlayer turtles aTurtleAtX: xy x y: xy y.
	^ ret ifNil: [self].
