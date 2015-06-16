private
addNewRow

	| row |
	row := AlignmentMorph newRow
		vResizing: #spaceFill;
		layoutInset: 0;
		borderWidth: 0;
		extent: (bounds width)@(TileMorph defaultH);
		color: Color transparent.
	self addMorphBack: row.
	^ row
