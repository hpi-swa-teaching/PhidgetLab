entries
addOverlapsDetailTo: aRow
	"Disreputable magic: add necessary items to a viewer row abuilding for the overlaps phrase"

	aRow addMorphBack: (Morph new color: self color; extent: 2@10).  "spacer"
	aRow addMorphBack:  self tileForSelf.
	aRow addMorphBack: (AlignmentMorph new beTransparent).  "flexible spacer"

