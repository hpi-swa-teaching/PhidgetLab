accessing - private
getXAndY

	| i |
	i := self index.
	^ ((turtles arrays at: 2) at: i)@((turtles arrays at: 3) at: i).
