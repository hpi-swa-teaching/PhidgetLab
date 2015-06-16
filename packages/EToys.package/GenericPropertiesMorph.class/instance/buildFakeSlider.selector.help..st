as yet unclassified
buildFakeSlider: nameStringOrSymbol selector: aSymbol help: helpString 
	| col |
	col := self inAColumn: { 
						(nameStringOrSymbol isSymbol) 
							ifTrue: 
								[(UpdatingStringMorph new)
									useStringFormat;
									getSelector: nameStringOrSymbol;
									target: self;
									growable: true;
									minimumWidth: 24;
									lock]
							ifFalse: [self lockedString: nameStringOrSymbol]}.
	col
		borderWidth: 2;
		borderColor: color darker;
		color: color muchLighter;
		hResizing: #shrinkWrap;
		setBalloonText: helpString;
		on: #mouseMove
			send: #mouseAdjust:in:
			to: self;
		on: #mouseDown
			send: #mouseAdjust:in:
			to: self;
		on: #mouseUp
			send: #clearSliderFeedback
			to: self;
		setProperty: #changeSelector toValue: aSymbol.
	^col