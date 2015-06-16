backward compatibility
markViewerOrigination
	"For bringing old content forward"

	| hadIt gotIt didntWantIt |
	hadIt := 0.
	gotIt := 0.
	didntWantIt := 0.
	self allSubInstancesDo:
		[:m | (m ownerThatIsA: CategoryViewer)
			ifNil:
				[m justGrabbedFromViewer: false.
				didntWantIt := didntWantIt + 1]
			ifNotNil:
				[(m justGrabbedFromViewerOrNil == true)
					ifTrue:
						[hadIt := hadIt + 1]
					ifFalse:
						[m justGrabbedFromViewer: true.
						gotIt := gotIt + 1]]].
	Transcript cr; show: 'updating phrase tiles -- already ok: '; show: hadIt; show: '  marked as in-viewer: '; show: gotIt; show: '  marked as not-in-viewer: '; show: didntWantIt.

	"PhraseTileMorph markViewerOrigination"