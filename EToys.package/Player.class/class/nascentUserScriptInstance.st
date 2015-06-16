scripts
nascentUserScriptInstance
	"Answer a new script object of the appropriate class"

	| classToUse |
	classToUse := Preferences universalTiles
		ifTrue:	[MethodWithInterface]
		ifFalse:	[UniclassScript].
	^ classToUse new