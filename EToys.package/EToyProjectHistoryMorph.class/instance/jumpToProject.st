as yet unclassified
jumpToProject

	| selection |
	selection := (Project current buildJumpToMenu: MenuMorph new) startUp.
	self closeMyFlapIfAny.
	Project current jumpToSelection: selection
