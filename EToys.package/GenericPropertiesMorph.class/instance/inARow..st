as yet unclassified
inARow: aCollectionOfMorphs

	| row |
	row := AlignmentMorphBob1 newRow
		color: Color transparent;
		vResizing: #shrinkWrap;
		layoutInset: 1;
		wrapCentering: #center;
		cellPositioning: #leftCenter.
	aCollectionOfMorphs do: [ :each | row addMorphBack: each].
	^row
