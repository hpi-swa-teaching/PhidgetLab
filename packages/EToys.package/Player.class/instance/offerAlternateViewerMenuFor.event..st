misc
offerAlternateViewerMenuFor: aViewer event: evt
	"Put up an alternate Viewer menu on behalf of the receiver."

	| aMenu aWorld  |
	aWorld := aViewer world.
	aMenu := MenuMorph new defaultTarget: self.
	costumes ifNotNil:
		[(costumes size > 1 or: [costumes size = 1 and: [costumes first ~~ costume renderedMorph]])
			ifTrue:
				[aMenu add: 'forget other costumes' translated target: self selector: #forgetOtherCostumes]].

	aMenu add: 'expunge empty scripts' translated target: self action: #expungeEmptyScripts.
	aMenu addLine.
	aMenu add: 'choose vocabulary...' translated target: aViewer action: #chooseVocabulary.
	aMenu balloonTextForLastItem: 'Choose a different vocabulary for this Viewer.' translated.
	aMenu add: 'choose limit class...' translated target: aViewer action: #chooseLimitClass.
	aMenu balloonTextForLastItem: 'Specify what the limitClass should be for this Viewer -- i.e., the most generic class whose methods and categories should be considered here.' translated.

	aMenu add: 'open standard lexicon' translated target: aViewer action: #openLexicon.
	aMenu balloonTextForLastItem: 'open a window that shows the code for this object in traditional programmer format' translated.

	aMenu add: 'open lexicon with search pane' translated target: aViewer action: #openSearchingProtocolBrowser.
	aMenu balloonTextForLastItem: 'open a lexicon that has a type-in pane for search (not recommended!)' translated.


	aMenu addLine.
	aMenu add: 'inspect morph' translated target: costume selector: #inspect.
	aMenu add: 'inspect player' translated target: self selector: #inspect.
	self belongsToUniClass ifTrue:
		[aMenu add: 'browse class' translated target: self action: #browsePlayerClass.
		aMenu add: 'inspect class' translated target: self class action: #inspect].
	aMenu add: 'inspect this Viewer' translated target: aViewer selector: #inspect.
	aMenu add: 'inspect this Vocabulary' translated target: aViewer currentVocabulary selector: #inspect.

	aMenu addLine.
	aMenu add: 'relaunch this Viewer' translated target: aViewer action: #relaunchViewer.
	aMenu add: 'attempt repairs' translated target: ActiveWorld action: #attemptCleanup.
	aMenu add: 'view morph directly' translated target: aViewer action: #viewMorphDirectly.
	aMenu balloonTextForLastItem: 'opens a Viewer directly on the rendered morph.' translated.
	(costume renderedMorph isSketchMorph) ifTrue:
		[aMenu addLine.
		aMenu add: 'impart scripts to...' translated target: self action: #impartSketchScripts].

	aMenu popUpEvent: evt in: aWorld