buttons
addYesNoToHand
	"Place a test/yes/no complex in the hand of the beloved user"

	| ms messageNodeMorph aMorph |
	Preferences universalTiles
		ifTrue:
			[ms := MessageSend receiver: true selector: #ifTrue:ifFalse:
						arguments: {['do nothing']. ['do nothing']}.
			messageNodeMorph := ms asTilesIn: playerScripted class globalNames: true.
			self primaryHand attachMorph: messageNodeMorph]
		ifFalse:
			[aMorph := CompoundTileMorph new.
			ActiveHand attachMorph: aMorph.
			aMorph setNamePropertyTo: 'TestTile' translated.
			aMorph position: ActiveHand position.
			aMorph formerPosition: ActiveHand position.
			self startSteppingSelector: #trackDropZones.]