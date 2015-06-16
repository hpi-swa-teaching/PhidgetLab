entries
addIsOverColorDetailTo: aRow
	"Special-casee code for the boolean-valued phrase variously known as is-over-color or sees-color."

	| clrTile |
	aRow addMorphBack: (Morph new color: self color; extent: 2@10).  "spacer"
	aRow addMorphBack: (clrTile := Color blue newTileMorphRepresentative).

"The following commented-out code put a readout up; the readout was very nice, but was very consumptive of cpu time, which is why the is-over-color tile got removed from the viewer long ago.  Now is-over-color is reinstated to the viewer, minus the expensive readout..."

"	aRow addMorphBack: (AlignmentMorph new beTransparent).
	readout := UpdatingStringMorphWithArgument new
			target: scriptedPlayer; getSelector: #seesColor:; growable: false; putSelector: nil;
			argumentTarget: clrTile colorSwatch argumentGetSelector: #color.
	readout useDefaultFormat.
	aTile := StringReadoutTile new typeColor: Color lightGray lighter.
	aTile addMorphBack: readout.
	aRow addMorphBack: aTile.
	aTile setLiteralTo: (scriptedPlayer seesColor: clrTile colorSwatch color) printString width: 30"