stepping and presenter
step
	"If the list of scripts to show has changed, refresh my contents"

	self showingOnlyTopControls ifFalse:
		[self presenter reinvigorateAllScriptsTool: self].