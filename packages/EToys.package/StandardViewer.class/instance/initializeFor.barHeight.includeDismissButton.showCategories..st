initialization
initializeFor: aPlayer barHeight: anInteger includeDismissButton: aBoolean showCategories: categoryInfo
	"Initialize the receiver to be a look inside the given Player.  The categoryInfo, if present, describes which categories should be present in it, in which order"

	scriptedPlayer := aPlayer.
	self listDirection: #topToBottom;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		borderWidth: 1.
	self color: self standardViewerColor.
	self addHeaderMorphWithBarHeight: anInteger includeDismissButton: aBoolean.

	categoryInfo isEmptyOrNil
		ifFalse:  "Reincarnating an pre-existing list"
			[categoryInfo do:
				[:aCat | self addCategoryViewerFor: aCat]]
		ifTrue:  "starting fresh"
			[self addSearchPane. 
			self addCategoryViewer.
			self addCategoryViewer.
			(scriptedPlayer isPlayerLike and: [scriptedPlayer costume isMemberOf: KedamaMorph]) ifTrue: [self addCategoryViewer].
		].