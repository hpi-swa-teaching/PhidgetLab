compiling
wantsChangeSetLogging
	"Log changes for CardPlayer itself, but not for automatically-created subclasses like CardPlayer1, CardPlayer2, but *do* log it for uniclasses that have been manually renamed."

	^ (self == CardPlayer or:
		[(self name beginsWith: 'CardPlayer') not]) or:
			[Preferences universalTiles]