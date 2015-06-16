user interface
dismiss
	| aFlapTab |
	"User hit the dismiss button."
	(owner isKindOf: TabbedPalette)
		ifTrue:
			[^ owner showNoPalette].
	(aFlapTab := self pasteUpMorph correspondingFlapTab) ifNotNil:
		[^ aFlapTab dismissViaHalo].
	self topRendererOrSelf delete