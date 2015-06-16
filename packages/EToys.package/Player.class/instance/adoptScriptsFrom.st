misc
adoptScriptsFrom
	"Let the user click on another object form which the receiver should obtain scripts and code"

	| aMorph |
	Sensor waitNoButton.
	aMorph := ActiveWorld chooseClickTarget.
	aMorph ifNil: [^ Beeper beep].

	(((aMorph isSketchMorph) and: [aMorph player belongsToUniClass]) and: [self belongsToUniClass not])
		ifTrue:
			[costume acquirePlayerSimilarTo: aMorph player]
		ifFalse:
			[Beeper beep]