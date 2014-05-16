accessing
current: aFloat
	"The angle in degrees presenting the current position of my servo."

	( ( 0 <= aFloat ) and: [ aFloat <= 360 ] )  ifTrue: [
		current := aFloat.
		self updateCurrentMorph ].