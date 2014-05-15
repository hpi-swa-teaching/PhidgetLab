accessing
angleB: anAngle
	"must be in degrees and between 0 and 360"
	
	( 0 <= anAngle and: [ anAngle <= 360 ] ) ifTrue: [
		angleB := anAngle.
		self updateShape ].