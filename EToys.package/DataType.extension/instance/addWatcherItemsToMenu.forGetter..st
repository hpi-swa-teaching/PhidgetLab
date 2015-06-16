*Etoys-tiles
addWatcherItemsToMenu: aMenu forGetter: aGetter
	"Add watcher items to the menu if appropriate, provided the getter is not an odd-ball one for which a watcher makes no sense"

	(Vocabulary gettersForbiddenFromWatchers includes: aGetter) ifFalse:
		[aMenu add: 'simple watcher' translated selector: #tearOffUnlabeledWatcherFor: argument: aGetter.
		aMenu add: 'detailed watcher' translated selector: #tearOffFancyWatcherFor: argument: aGetter.
		aMenu addLine]