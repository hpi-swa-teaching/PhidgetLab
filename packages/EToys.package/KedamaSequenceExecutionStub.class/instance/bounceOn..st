player commands
bounceOn: aPlayer

	| aTurtle xy |
	aPlayer = exampler ifTrue: [^ false].
	xy := self getXAndY.
	aTurtle := aPlayer turtles aTurtleAtX: xy x y: xy y.
	aTurtle ifNil: [^ false].
	self doBounceOn: aTurtle of: aPlayer.
	^ true.
