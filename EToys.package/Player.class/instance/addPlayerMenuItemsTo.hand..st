pen
addPlayerMenuItemsTo: aMenu hand: aHandMorph
	"Note that these items are primarily available in another way in an object's Viewer"

	| subMenu |
	subMenu := MenuMorph new defaultTarget: self.
	self getPenDown
		ifTrue: [subMenu add: 'lift pen' action: #liftPen]
		ifFalse: [subMenu add: 'lower pen' action: #lowerPen].
	subMenu add: 'choose pen size...' action: #choosePenSize.
	subMenu add: 'choose pen color...' action: #choosePenColor:.
	aMenu add: 'pen...' subMenu: subMenu.

	(costume renderedMorph isSketchMorph) ifTrue:
		[self belongsToUniClass
			ifFalse: 
				[aMenu add: 'adopt scripts from...' target: self action: #adoptScriptsFrom]
			ifTrue:
				[aMenu add: 'impart scripts to...' target: self action: #impartSketchScripts]]