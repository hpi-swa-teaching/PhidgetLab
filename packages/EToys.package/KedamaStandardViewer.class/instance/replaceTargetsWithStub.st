turtle view
replaceTargetsWithStub

	self submorphsDo: [:e |
		(e isMemberOf: KedamaCategoryViewer) ifTrue: [
			e replaceTargetWith: stub.
		].
	].
