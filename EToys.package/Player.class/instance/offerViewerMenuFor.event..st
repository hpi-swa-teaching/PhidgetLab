misc
offerViewerMenuFor: aViewer event: evt
	"Put up the Viewer menu on behalf of the receiver.  If the shift key is held down, put up the alternate menu. The menu omits the 'add a new variable' item when in eToyFriendly mode, as per request from teachers using Squeakland in 2003 once the button for adding a new variable was added to the viewer"

	| aMenu aWorld  |
	(evt notNil and: [evt shiftPressed and: [Preferences eToyFriendly not]]) ifTrue:[
		^ self offerAlternateViewerMenuFor: aViewer event: evt
	].

	aWorld := aViewer world.
	aMenu := MenuMorph new defaultTarget: self.
	aMenu title: self externalName.
	aMenu addStayUpItem.
	self costume renderedMorph offerCostumeViewerMenu: aMenu.

	Preferences eToyFriendly ifFalse: "exclude this from squeakland-like UI "
		[aMenu add: 'add a new variable' translated target: self action: #addInstanceVariable.
		aMenu balloonTextForLastItem: 'Add a new variable to this object and all of its siblings.  You will be asked to supply a name for it.' translated].

	aMenu add: 'add a new script' translated target: aViewer action: #newPermanentScript.
	aMenu balloonTextForLastItem: 'Add a new script that will work for this object and all of its siblings' translated.
	aMenu addLine.
	self hasCostumeThatIsAWorld ifFalse:[
	
	aMenu add: 'grab me' translated target: self selector: #grabPlayerIn: argument: aWorld.
	
	aMenu balloonTextForLastItem: 'This will actually pick up the object this Viewer is looking at, and hand it to you.  Click the (left) button to drop it' translated.
	].

	aMenu add: 'reveal me' translated target: self selector: #revealPlayerIn: argument: aWorld.
	aMenu balloonTextForLastItem: 'If you have misplaced the object that this Viewer is looking at, use this item to (try to) make it visible' translated.

	aMenu addLine.
	aMenu add: 'tile representing me' translated action: #tearOffTileForSelf.
	aMenu add: 'add search pane' translated target: aViewer action: #addSearchPane.
	Preferences eToyFriendly ifFalse:[
	
	aMenu addLine.
	
	aMenu add: 'more...' translated target: self selector: #offerAlternateViewerMenuFor:event: argumentList: {aViewer. evt}.
	].

	aMenu popUpEvent: evt in: aWorld
