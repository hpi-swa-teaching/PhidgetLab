testing
testArrowAction
	"self debug: #testArrowAction"
	| dummy tile |
	dummy := Morph new.
	tile := TileMorph new setOperator: '+'.
	dummy addMorph: tile.
	tile arrowAction: 1.
	self assert: tile codeString = '-'.

	tile := TileMorph new setOperator: '<'.
	dummy addMorph: tile.
	tile arrowAction: 1.
	"Because receiver is not tile"
	self assert: tile codeString = '='.

	tile := true newTileMorphRepresentative.
	dummy addMorph: tile.
	tile arrowAction: 1.
	self assert: tile codeString = '(false)'.
