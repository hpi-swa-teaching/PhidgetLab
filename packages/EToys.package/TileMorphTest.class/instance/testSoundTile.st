testing
testSoundTile
	"self debug: #testSoundTile"
	| tile dummy |
	dummy := Morph new.
	tile := SoundTile new literal: 'croak'.
	dummy addMorph: tile.
	tile arrowAction: 1.
	self assert: tile codeString = '(''horn'')'.

	