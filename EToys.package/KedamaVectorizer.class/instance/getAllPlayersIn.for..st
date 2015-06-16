player and selector look up
getAllPlayersIn: aMessageNode for: obj

	| aCollection |
	aCollection := OrderedCollection new.
	self getPlayersMessage: aMessageNode for: obj into: aCollection.
	^ aCollection.
