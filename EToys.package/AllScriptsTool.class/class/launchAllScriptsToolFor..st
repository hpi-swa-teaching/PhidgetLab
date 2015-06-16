instance creation
launchAllScriptsToolFor: aPresenter
	"Launch an AllScriptsTool to view scripts of the given presenter"

	| aTool |
	aTool := self newColumn.
	aTool initializeFor: aPresenter.
	self currentHand attachMorph: aTool.
	aPresenter associatedMorph world startSteppingSubmorphsOf: aTool
