testing
testAssignmentTile
	"self debug: #testAssignmentTile"

	| player viewer tile phrase |
	player := Morph new assuredPlayer.
	viewer := CategoryViewer new invisiblySetPlayer: player.
	viewer  makeSetter: #(#getX #Number) event: nil from: player costume.
	phrase := ActiveHand firstSubmorph.
	ActiveHand removeAllMorphs.
	tile := phrase submorphs second.

	self assert: tile codeString = 'setX: '.
	tile arrowAction: 1.
	self assert: tile codeString = 'setX: self getX + '.

