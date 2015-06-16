misc
indicateLocationOnScreen
	"Give momentary feedback on screen until mouse button is clicked"

	| bds |
	bds := self costume boundsInWorld.
	5 timesRepeat:
		[Display reverse: bds.
		(Delay forMilliseconds: 80) wait.
		Display reverse: bds.
		(Delay forMilliseconds: 200) wait.].
	costume changed