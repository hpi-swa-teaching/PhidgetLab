get/set slots
makeUniversalTilesGetter: aMethodInterface event: evt from: aMorph
	"Button in viewer performs this to make a universal-tiles getter and attach it to hand."

	| newTiles |
	newTiles := self newGetterTilesFor: scriptedPlayer methodInterface: aMethodInterface.
	newTiles setProperty: #beScript toValue: true.
	owner
		ifNotNil:
			[ActiveHand attachMorph: newTiles.
			newTiles align: newTiles topLeft with: evt hand position + (7@14)]
		ifNil:
			[^ newTiles]
