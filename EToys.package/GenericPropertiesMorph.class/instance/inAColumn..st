as yet unclassified
inAColumn: aCollectionOfMorphs

	| col |
	col := AlignmentMorphBob1 newColumn
		color: Color transparent;
		vResizing: #shrinkWrap;
		layoutInset: 1;
		wrapCentering: #center;
		cellPositioning: #topCenter.
	aCollectionOfMorphs do: [ :each | col addMorphBack: each].
	^col