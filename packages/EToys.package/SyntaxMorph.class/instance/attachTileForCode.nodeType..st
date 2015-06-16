new tiles
attachTileForCode: expression nodeType: nodeClass
	| nn master tile |
	"create a new tile for a part of speech, and put it into the hand"

	"a few special cases"
	expression = 'self' ifTrue: [
		^ (((self string: expression toTilesIn: Object) 
				findA: ReturnNode) findA: nodeClass) attachToHand].

	expression = '<me by name>' ifTrue: ["Tile for the variable in References"
		nn := nodeClass knownName ifNil: [#+].
		(References at: nn asSymbol ifAbsent: [nil]) == nodeClass ifTrue: [
			^ self attachTileForCode: nn nodeType: LiteralVariableNode].
		"otherwise just give a tile for self"
		^ self attachTileForCode: 'self' nodeType: VariableNode].

	expression = '<assignment>' ifTrue: ["do something really special"
		master := self class new.
		master addNoiseString: '  _   ' emphasis: TextEmphasis bold emphasisCode.
		tile := master firstSubmorph.
		^ (tile parseNode: AssignmentNode new) attachToHand].	"special marker"
		"When this is dropped on a variable, enclose it in 
			a new assignment statement"

	"general case -- a tile for a whole line of code is returned"
	^ ((self string: expression toTilesIn: Object) 
				findA: nodeClass) attachToHand.