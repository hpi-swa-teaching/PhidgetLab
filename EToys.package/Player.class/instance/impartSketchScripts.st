misc
impartSketchScripts
	"Let the user designate another object to which my scripts and code should be imparted"

	| aMorph |
	Sensor waitNoButton.
	aMorph := ActiveWorld chooseClickTarget.
	aMorph ifNil: [^ self].
	(aMorph renderedMorph isSketchMorph) ifTrue:
		[aMorph acquirePlayerSimilarTo: self]