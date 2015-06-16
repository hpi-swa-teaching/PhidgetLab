toggles
toggleWhetherShowingAllInstances
	"Toggle whether the receiver is showing all instances or only one exemplar per uniclass"

	showingAllInstances := showingAllInstances not.
	self presenter reinvigorateAllScriptsTool: self