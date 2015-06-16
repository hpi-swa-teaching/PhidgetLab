player commands
getTurtleAt: aPlayer

	| ret xy |
	xy := aPlayer getXAndY.
	ret := exampler turtles aTurtleAtX: xy x y: xy y.
	^ ret ifNil: [self].
