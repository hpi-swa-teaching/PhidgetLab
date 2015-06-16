slots-user
fancyWatcherFor: aGetter
	"Anser a labeled readout for viewing a value textuallyi"

	| aWatcher aColor aLine itsName aSelector aLabel |
	aWatcher := self unlabeledWatcherFor: aGetter.
	aColor := Color r: 0.387 g: 0.581 b: 1.0.
	aLine := WatcherWrapper newRow.
	aLine player: self variableName: (aSelector := aGetter inherentSelector).
	itsName := aWatcher externalName.
	aWatcher setNameTo: 'readout'.
	aLine addMorphFront: (self tileReferringToSelf
				borderWidth: 0; layoutInset: 4@0;
				typeColor: aColor; 
				color: aColor; bePossessive).
	aLabel := StringMorph contents: aSelector translated, ' = ' font: ScriptingSystem fontForTiles.
	aLabel setProperty: #watcherLabel toValue: true.
	aLine addMorphBack: aLabel.
	aLine addMorphBack: aWatcher.
	aLine setNameTo: itsName.

	^ aLine