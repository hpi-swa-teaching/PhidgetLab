player commands
doBounceOn: aTurtle of: aPlayer

	| bounceDir myHeading neg newHeading xy |
	aPlayer = exampler ifTrue: [^ false].
	bounceDir := aTurtle getHeading.
	myHeading := self getHeading.
	neg := (myHeading + 180.0) \\ 360.0.

	newHeading := (bounceDir - neg + bounceDir).
	self setHeading: newHeading.
	[xy := self getXAndY. (aPlayer turtles aTurtleAtX: xy x y: xy y) ~= nil] whileTrue: [
		self forward: 0.5.
	].
