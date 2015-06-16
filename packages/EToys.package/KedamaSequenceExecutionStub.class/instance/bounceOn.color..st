player commands
bounceOn: aPlayer color: c

	| aTurtle xy |
	aPlayer = exampler ifTrue: [^ false].
	xy := self getXAndY.
	aTurtle := aPlayer turtles aTurtleAtX: xy x y: xy y.
	aTurtle ifNil: [^ false].
	((aPlayer turtles arrays at: 5) at: aTurtle index) = c ifFalse: [^ false].
	self doBounceOn: aTurtle of: aPlayer.
	^ true.
