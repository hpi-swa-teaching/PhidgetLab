background
insertAsBackground: newPage resize: doResize
	"Make a new background for the stack.  Obtain a name for it from the user.  It starts out life empty"

	| aName |
	aName := UIManager default request: 'What should we call this new background?' translated initialAnswer: 'alternateBackground' translated.
	aName isEmptyOrNil ifTrue: [^ self].
	newPage beSticky.
	doResize ifTrue: [newPage extent: currentPage extent].
	newPage beAStackBackground.
	newPage setNameTo: aName.
	newPage vResizeToFit: false.
	pages isEmpty
		ifTrue: [pages add: newPage]
		ifFalse: [pages add: newPage after: currentPage].
	self privateCards add: newPage currentDataInstance after: currentPage currentDataInstance.
	self nextPage.
