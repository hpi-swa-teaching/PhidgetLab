versions
revertScriptVersionFrom: anEditor installing: aSavedEditor
	"Replace anEditor with a brought-up-to-date version of aSavedEditor"

	| aPosition oldOwner |
	aPosition := anEditor position.
	oldOwner := anEditor topRendererOrSelf owner.
	anEditor delete.
	currentScriptEditor := aSavedEditor bringUpToDate install.
	player costume viewAfreshIn: oldOwner showingScript: selector at: aPosition