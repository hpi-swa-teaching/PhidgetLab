misc
offerMenuIn: aStatusViewer
	"Put up a menu."

	| aMenu |
	ActiveHand showTemporaryCursor: nil.
	aMenu := MenuMorph new defaultTarget: self.
	aMenu title: player knownName, ' ', selector.
	aMenu addStayUpItem.
	(player class instanceCount > 1) ifTrue:
		[aMenu add: 'propagate status to siblings' translated selector: #assignStatusToAllSiblingsIn: argument: aStatusViewer.
		aMenu balloonTextForLastItem: 'Make the status of this script in all of my sibling instances be the same as the status you see here' translated].

	aMenu add: 'reveal this object' translated target: player selector: #revealPlayerIn: argument: ActiveWorld.
	aMenu balloonTextForLastItem: 'Make certain this object is visible on the screen; flash its image for a little while, and give it the halo.' translated.
	aMenu add: 'open this script''s Scriptor' translated target: player selector: #grabScriptorForSelector:in: argumentList: {selector. aStatusViewer world}.
	aMenu balloonTextForLastItem: 'Open up the Scriptor for this script' translated.
	aMenu add: 'open this object''s Viewer' translated target: player selector: #beViewed.
	aMenu balloonTextForLastItem: 'Open up a Viewer for this object' translated.
	aMenu addLine.
	aMenu add: 'more...' translated target: self selector: #offerShiftedMenuIn: argument: aStatusViewer.
	aMenu balloonTextForLastItem: 'The "more..." branch offers you menu items that are less frequently used.' translated.
	aMenu popUpInWorld: ActiveWorld