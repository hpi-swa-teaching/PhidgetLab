initialization
unlabeledForPlayer: aPlayer getter: aGetter 
	"build a simple watcher"
	| readout |
	self buildForPlayer: aPlayer getter: aGetter.
	readout := self submorphs last.
	(readout isKindOf: TileMorph)
		ifTrue: [readout labelMorph lock: true.
			readout labelMorph beSticky]