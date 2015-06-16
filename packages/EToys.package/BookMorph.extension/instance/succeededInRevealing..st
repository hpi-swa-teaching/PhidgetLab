*Etoys-support
succeededInRevealing: aPlayer
	currentPage ifNotNil: [currentPage player == aPlayer ifTrue: [^ true]].
	pages do:
		[:aPage |
			(aPage succeededInRevealing: aPlayer) ifTrue:
				[self goToPageMorph: aPage.
				^ true]].
	^ false