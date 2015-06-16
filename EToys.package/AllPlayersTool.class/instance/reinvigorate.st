reinvigoration
reinvigorate
	"Referesh the contents of the receiver"

	(submorphs copyFrom: 3 to: submorphs size) do:
		[:m | m delete].
	ActiveWorld doOneCycleNow.
	self playSoundNamed: 'scritch'.
	(Delay forMilliseconds: 700) wait.
	ActiveWorld presenter reinvigoratePlayersTool: self.
	self playSoundNamed: 'scratch'