compiling
wantsChangeSetLogging
	"Log changes for Player itself, but not for automatically-created subclasses like Player1, Player2, but *do* log it for uniclasses that have been manually renamed."

	^ (self == KedamaExamplerPlayer or:
		[(self name beginsWith: 'KedamaExamplerPlayer') not]) or:
			[Preferences universalTiles]