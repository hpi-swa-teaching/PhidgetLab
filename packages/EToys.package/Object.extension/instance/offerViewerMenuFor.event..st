*Etoys-viewer
offerViewerMenuFor: aViewer event: evt
	"Offer the primary Viewer menu to the user.  Copied up from Player code, but most of the functions suggested here don't work for non-Player objects, many aren't even defined, some relate to exploratory sw work not yet reflected in the current corpus.  We are early in the life cycle of this method..."

	| aMenu |
	aMenu := MenuMorph new defaultTarget: self.
	aMenu addStayUpItem.
	aMenu title: '**CAUTION -- UNDER CONSTRUCTION!**
Many things may not work!
', self nameForViewer.
	(aViewer affordsUniclass and: [self belongsToUniClass not]) ifTrue:
		[aMenu add: 'give me a Uniclass' action: #assureUniClass.
		aMenu addLine].
	aMenu add: 'choose vocabulary...' target: aViewer action: #chooseVocabulary.
	aMenu add: 'choose limit class...' target: aViewer action: #chooseLimitClass.
	aMenu add: 'add search pane' target: aViewer action: #addSearchPane.
	aMenu balloonTextForLastItem: 'Specify which class should be the most generic one to have its methods shown in this Viewer'.
	aMenu addLine.

	self belongsToUniClass ifTrue:
		[aMenu add: 'add a new instance variable' target: self selector: #addInstanceVariableIn: argument: aViewer.
		aMenu add: 'add a new script' target: aViewer selector: #newPermanentScriptIn: argument: aViewer.
		aMenu addLine.
		aMenu add: 'make my class be first-class' target: self selector: #makeFirstClassClassIn: argument: aViewer.
		aMenu add: 'move my changes up to my superclass' target: self action: #promoteChangesToSuperclass.
		aMenu addLine].

	aMenu add: 'tear off a tile' target: self selector: #launchTileToRefer.
	aMenu addLine.

	aMenu add: 'inspect me' target: self selector: #inspect.
	aMenu add: 'inspect my class' target: self class action: #inspect.
	aMenu addLine.

	aMenu add: 'browse vocabulary' action: #haveFullProtocolBrowsed.
	aMenu add: 'inspect this Viewer' target: aViewer action: #inspect.

	aMenu popUpEvent: evt in: aViewer currentWorld

"
	aMenu add: 'references to me' target: aViewer action: #browseReferencesToObject.
	aMenu add: 'toggle scratch pane' target: aViewer selector: #toggleScratchPane.
	aMenu add: 'make a nascent script for me' target: aViewer selector: #makeNascentScript.
	aMenu add: 'rename me' target: aViewer selector: #chooseNewNameForReference.
	aMenu add: 'browse full' action: #browseOwnClassFull.
	aMenu add: 'browse hierarchy' action: #browseOwnClassHierarchy.
	aMenu add: 'set user level...' target: aViewer action: #setUserLevel.
	aMenu add: 'browse sub-protocol' action: #browseOwnClassSubProtocol.
	aMenu addLine.

"