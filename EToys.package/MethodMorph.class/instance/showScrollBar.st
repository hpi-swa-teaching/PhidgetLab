scrolling
showScrollBar
	"Copied down and modified to get rid of the ruinous comeToFront of the inherited version."

	| scriptor |
	(submorphs includes: scrollBar)
		ifTrue: [^ self].
	self vResizeScrollBar.
	self privateAddMorph: scrollBar atIndex: 1.
	retractableScrollBar
		ifTrue:
			["Bring the pane to the front so that it is fully visible"
			"self comeToFront. -- thanks but no thanks"
			(scriptor := self ownerThatIsA: ScriptEditorMorph)
				ifNotNil:
					[scriptor comeToFront]]
		ifFalse: [self resetExtent]