scripting
bringUpToDate
	"Make certain that the player name in my header is up to date.  Names emblazoned on submorphs of mine are handled separately by direct calls to their #bringUpToDate methods -- the responsibility here is strictly for the name in the header."

	| currentName |
	playerScripted ifNil: 
			["likely a naked test/yes/no fragment!"

			^self].
	currentName := playerScripted externalName.
	submorphs isEmpty ifTrue: [^self].
	(self firstSubmorph findDeepSubmorphThat: [:m | m knownName = 'title']
		ifAbsent: [^self]) label: currentName font: ScriptingSystem fontForTiles