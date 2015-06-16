player commands
getReplicated

	| proto newWho n |
	proto := (1 to: turtles arrays size) collect: [:i | (turtles arrays at: i) at: self index].
	kedamaWorld makeReplicatedTurtles: 1 examplerPlayer: exampler color: nil ofPrototype: proto randomize: false.
	exampler costume renderedMorph privateTurtleCount: (kedamaWorld turtlesCountOf: exampler).
	newWho := (kedamaWorld lastWhoOf: exampler).
	n := self clone.
	n who: newWho.
	^ n.
