queries
choices
	"Answer an alphabetized list of known user custom event selectors"

	| choices |
	choices := ScriptingSystem userCustomEventNames.
	^choices isEmpty ifTrue: [ #('no event') ] ifFalse: [ choices ]