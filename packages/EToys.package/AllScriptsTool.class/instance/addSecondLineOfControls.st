initialization
addSecondLineOfControls
	"Add the second line of controls"

	| aRow outerButton aButton worldToUse |
	aRow := AlignmentMorph newRow listCentering: #center; color: Color transparent.
	outerButton := AlignmentMorph newRow.
	outerButton wrapCentering: #center; cellPositioning: #leftCenter.
	outerButton color:  Color transparent.
	outerButton hResizing: #shrinkWrap; vResizing: #shrinkWrap.
	outerButton addMorph: (aButton := UpdatingThreePhaseButtonMorph checkBox).
	aButton
		target: self;
		actionSelector: #toggleWhetherShowingOnlyActiveScripts;
		getSelector: #showingOnlyActiveScripts.
	outerButton addTransparentSpacerOfSize: (4@0).
	outerButton addMorphBack: (StringMorph contents: 'tickers only' translated) lock.
	outerButton setBalloonText: 'If checked, then only scripts that are paused or ticking will be shown' translated.
	aRow addMorphBack: outerButton.

	aRow addTransparentSpacerOfSize: 20@0.
	aRow addMorphBack: self helpButton.

	aRow addTransparentSpacerOfSize: 20@0.

	outerButton := AlignmentMorph newRow.
	outerButton wrapCentering: #center; cellPositioning: #leftCenter.
	outerButton color:  Color transparent.
	outerButton hResizing: #shrinkWrap; vResizing: #shrinkWrap.
	outerButton addMorph: (aButton := UpdatingThreePhaseButtonMorph checkBox).
	aButton
		target: self;
		actionSelector: #toggleWhetherShowingAllInstances;
		getSelector: #showingAllInstances.
	outerButton addTransparentSpacerOfSize: (4@0).
	outerButton addMorphBack: (StringMorph contents: 'all instances' translated) lock.
	outerButton setBalloonText: 'If checked, then entries for all instances will be shown, but if not checked, scripts for only one representative of each different kind of object will be shown.  Consult the help available by clicking on the purple ? for more information.' translated.
	aRow addMorphBack: outerButton.

	self addMorphBack: aRow.
	worldToUse := self isInWorld ifTrue: [self world] ifFalse: [ActiveWorld].
	worldToUse presenter reinvigorateAllScriptsTool: self.
	self layoutChanged.