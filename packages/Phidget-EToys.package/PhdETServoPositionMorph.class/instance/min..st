accessing
min: aFloat
	"The minimal possible position of a servo to set to"

	( ( 0 <= aFloat ) and: [ aFloat <= 360 ] )  ifTrue: [
		min := aFloat.
		self updateMinMorph ].