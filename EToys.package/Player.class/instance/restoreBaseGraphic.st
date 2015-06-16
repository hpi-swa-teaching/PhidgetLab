costume
restoreBaseGraphic
	"Restore my base graphic"

	| cos |
	((cos := self costume renderedMorph) isSketchMorph)
		ifTrue:
			[cos restoreBaseGraphic]