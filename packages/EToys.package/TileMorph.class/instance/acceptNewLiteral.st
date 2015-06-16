code generation
acceptNewLiteral
	"Tell the scriptEditor who I belong to that I have a new literal value."

	| topScript |
	topScript := self outermostMorphThat:
		[:m | m isKindOf: ScriptEditorMorph].
	topScript ifNotNil: [topScript installWithNewLiteral].
	(self ownerThatIsA: ViewerLine) ifNotNil:
		[:aLine |
			(self ownerThatIsA: PhraseTileMorph) ifNotNil:
				[aLine removeHighlightFeedback.
				self layoutChanged.
				ActiveWorld doOneSubCycle.
				aLine addCommandFeedback]]