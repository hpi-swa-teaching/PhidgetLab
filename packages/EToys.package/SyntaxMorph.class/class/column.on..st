as yet unclassified
column: aColor on: aParseNode

	| c color |
	color := self translateColor: aColor.
	(c := self newColumn)
		parseNode: aParseNode;
		layoutInset: c standardInset;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		color: color;
		borderWidth: 1;
		borderColor: c stdBorderColor;
		wrapCentering: #topLeft;
		cellPositioning: c standardCellPositioning.
	^c
