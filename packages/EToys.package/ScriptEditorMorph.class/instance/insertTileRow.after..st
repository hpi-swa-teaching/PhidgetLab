private
insertTileRow: tileList after: index
	"Return a row to be used to insert an entire row of tiles."

	| row |
	row := AlignmentMorph newRow
		vResizing: #spaceFill;
		layoutInset: 0;
		extent: (bounds width)@(TileMorph defaultH);
		color: Color transparent.
	row addAllMorphs: tileList.
	self privateAddMorph: row atIndex: index + 1.
