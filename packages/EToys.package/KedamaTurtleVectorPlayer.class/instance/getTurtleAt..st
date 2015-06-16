player commands
getTurtleAt: aPlayer

	| xy |
	aPlayer isCollection ifTrue: [
		self error: 'should not happen'.
	].
	xy := aPlayer getXAndY.
	^ (self aTurtleAtX: xy x y: xy y) ifNil: [^ aPlayer].
