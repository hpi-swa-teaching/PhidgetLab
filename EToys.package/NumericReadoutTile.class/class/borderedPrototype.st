instance creation
borderedPrototype
	"Just number and up/down arrows"

	| aWatcher aTile |

	aTile := self new typeColor: (Color r: 0.387 g: 0.581 b: 1.0).
	aWatcher := UpdatingStringMorph new.
	aWatcher growable: true; setNameTo: 'value'.
	aTile addMorphBack: aWatcher.
	aTile addArrows; setNameTo: 'Number (mid)'.
	aTile setLiteralTo: 5 width: 30.
	aWatcher step; fitContents; setToAllowTextEdit.
	^ aTile extent: 30@24; markAsPartsDonor