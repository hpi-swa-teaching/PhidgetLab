instance creation
allScriptsToolForActiveWorld
	"Launch an AllScriptsTool to view scripts of the active world"

	| aTool |
	aTool := self newColumn.
	aTool initializeFor: ActiveWorld presenter.
	^ aTool