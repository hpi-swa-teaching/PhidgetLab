turtle view
replaceTargetsWithExampler

	self submorphsDo: [:e |
		(e isMemberOf: KedamaCategoryViewer) ifTrue: [
			e replaceTargetWith: scriptedPlayer.
		].
	].
