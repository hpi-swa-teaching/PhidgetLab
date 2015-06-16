add turtles
makePrototypeFromFirstInstance

	^ (1 to: arrays size) collect: [:index |
		(arrays at: index) first
	].
