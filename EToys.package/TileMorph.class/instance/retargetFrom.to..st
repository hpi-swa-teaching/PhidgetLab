initialization
retargetFrom: oldPlayer to: newPlayer
	"Change the receiver so that if formerly it referred to oldPlayer, it refers to newPlayer instead"

	| newLabel |
	(type == #objRef  and: [actualObject == oldPlayer]) ifTrue:
		[actualObject := newPlayer.
		newLabel := actualObject externalName.
		self isPossessive ifTrue:
			[newLabel := newLabel, '''s' translated].
		self line1: newLabel]