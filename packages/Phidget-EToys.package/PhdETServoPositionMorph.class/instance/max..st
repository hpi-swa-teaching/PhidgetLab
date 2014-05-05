accessing
max: aFloat
	"The maximal possible position of a servo to set to"

	( ( 0 <= aFloat ) and: [ aFloat <= 360 ] )  ifTrue: [
		max := aFloat.
		self updateMaxMorph ].