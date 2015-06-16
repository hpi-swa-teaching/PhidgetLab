selection
deselect
	self allMorphsDo:
		[:m | m isSyntaxMorph ifTrue: [m setDeselectedColor]].

	"Note following is wasteful because we do a deselect before each select, and it is often the same morph."
	self deletePopup