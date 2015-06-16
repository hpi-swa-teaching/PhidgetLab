toggles
toggleWhetherShowingOnlyActiveScripts
	"Toggle whether the receiver is showing only active scripts"

	showingOnlyActiveScripts := showingOnlyActiveScripts not.
	self presenter reinvigorateAllScriptsTool: self