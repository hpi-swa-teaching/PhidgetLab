mouse handling
showOptions
	| topScript |
	suffixArrow
		ifNotNil: [(suffixArrow bounds containsPoint: ActiveHand cursorPoint)
				ifTrue: [^ super showOptions]].
	topScript := self
				outermostMorphThat: [:m | m isKindOf: ScriptEditorMorph].
	topScript
		ifNotNil: [topScript handUserParameterTile]