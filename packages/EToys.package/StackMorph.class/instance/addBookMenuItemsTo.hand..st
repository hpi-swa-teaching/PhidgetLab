menu
addBookMenuItemsTo: aMenu hand: aHandMorph
	"Add book-related items to the given menu"

	| controlsShowing subMenu |
	subMenu := MenuMorph new defaultTarget: self.
	subMenu add: 'previous card' translated action: #goToPreviousCardInStack.
	subMenu add: 'next card' translated action: #goToNextCardInStack.
	subMenu add: 'go to card...' translated action: #goToCard.
	subMenu add: 'insert a card' translated action: #insertCard.
	subMenu add: 'delete this card' translated action: #deleteCard.

	controlsShowing := self hasSubmorphWithProperty: #pageControl.
	controlsShowing
		ifTrue:
			[subMenu add: 'hide card controls' translated action: #hidePageControls.
			subMenu add: 'fewer card controls' translated action: #fewerPageControls]
		ifFalse:
			[subMenu add: 'show card controls' translated action: #showPageControls].

	subMenu addLine.
	subMenu add: 'sound effect for all backgrounds' translated action: #menuPageSoundForAll:.
	subMenu add: 'sound effect this background only' translated action: #menuPageSoundForThisPage:.
	subMenu add: 'visual effect for all backgrounds' translated action: #menuPageVisualForAll:.
	subMenu add: 'visual effect this background only' translated action: #menuPageVisualForThisPage:.

	subMenu addLine.
	subMenu add: 'sort pages' translated action: #sortPages:.
	subMenu add: 'uncache page sorter' translated action: #uncachePageSorter.
	(self hasProperty: #dontWrapAtEnd)
		ifTrue: [subMenu add: 'wrap after last page' translated selector: #setWrapPages: argument: true]
		ifFalse: [subMenu add: 'stop at last page' translated selector: #setWrapPages: argument: false].

	subMenu  addUpdating: #showingFullScreenString action: #toggleFullScreen.
	subMenu addLine.
	subMenu add: 'search for text' translated action: #textSearch.
	(self primaryHand pasteBuffer class isKindOf: PasteUpMorph class) ifTrue:
		[subMenu add: 'paste book page' translated action: #pasteBookPage].

	subMenu add: 'send all pages to server' translated action: #savePagesOnURL.
	subMenu add: 'send this page to server' translated action: #saveOneOnURL.
	subMenu add: 'reload all from server' translated action: #reload.
	subMenu add: 'copy page url to clipboard' translated action: #copyUrl.
	subMenu add: 'keep in one file' translated action: #keepTogether.
	subMenu add: 'save as new-page prototype' translated action: #setNewPagePrototype.
	newPagePrototype ifNotNil:
		[subMenu add: 'clear new-page prototype' translated action: #clearNewPagePrototype].

	aMenu add: 'book...' translated subMenu: subMenu
