entries
addTouchesADetailTo: aRow
	| clrTile |
	aRow addMorphBack: (Morph new color: self color; extent: 2@10).  " spacer"
	aRow addMorphBack: (clrTile := self tileForSelf).
	aRow addMorphBack: (AlignmentMorph new beTransparent).  "flexible spacer"

	"readout := UpdatingStringMorphWithArgument new
			target: scriptedPlayer; getSelector: #seesColor:; growable: false; putSelector: nil;
			argumentTarget: clrTile colorSwatch argumentGetSelector: #color.
	readout useDefaultFormat.
	aTile := StringReadoutTile new typeColor: Color lightGray lighter.
	aTile addMorphBack: readout.
	aRow addMorphBack: aTile.
	aTile setLiteralTo: (scriptedPlayer seesColor: clrTile colorSwatch color) printString width: 30"