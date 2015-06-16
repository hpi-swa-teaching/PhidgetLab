player commands
getAngleTo: aPlayer

	| i xy |
	i := self index.
	xy := aPlayer getXAndY.
	^ self primGetAngleToX: xy x toY: xy y fromX: ((turtles arrays at: 2) at: i) fromY: ((turtles arrays at: 3) at: i).
