player commands
getTurtleOf: aBreedPlayer

	| xy |
	aBreedPlayer isCollection ifTrue: [
		"self error: 'should not happen'."
		^ aBreedPlayer.
	].
	xy := aBreedPlayer getXAndY.
	^ (self aTurtleAtX: xy x y: xy y) ifNil: [^ aBreedPlayer].
