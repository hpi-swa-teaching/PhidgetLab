as yet unclassified
row: aColor on: aParseNode

	| r color |
	color := self translateColor: aColor.
	(r := self newRow)
		parseNode: aParseNode;
		layoutInset: r standardInset;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		color: color;
		borderWidth: 1;
		borderColor: r stdBorderColor;
		wrapCentering: #topLeft;
		cellPositioning: r standardCellPositioning.
	^r