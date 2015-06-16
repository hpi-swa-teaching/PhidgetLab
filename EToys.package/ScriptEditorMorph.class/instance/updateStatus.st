buttons
updateStatus
	"Update that status in the receiver's header.  "

	(self topEditor == self and: [firstTileRow ~= 1]) ifTrue:
		[(submorphs size = 0 or: [(self firstSubmorph findA: ScriptStatusControl) isNil])
			ifTrue:
				[self replaceRow1].
		self updateStatusMorph: (self firstSubmorph findA: ScriptStatusControl)]