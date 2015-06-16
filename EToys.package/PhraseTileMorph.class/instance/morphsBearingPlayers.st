kedama
morphsBearingPlayers

	| c |
	c := OrderedCollection new.
	self allMorphsWithPlayersDo: [:e :p | c add: e].
	^ c asArray.
