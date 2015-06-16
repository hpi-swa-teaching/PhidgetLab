*Etoys-viewer tab
viewMorph: aMorph
	"The receiver is expected to have a viewer tab; select it, and target it to aMorph"
	| aPlayer aViewer oldOwner |
	((currentPage isKindOf: Viewer) and: [currentPage scriptedPlayer == aMorph player])
		ifTrue:
			[^ self].
	oldOwner := owner.
	self delete.
	self visible: false.
	aPlayer := aMorph assuredPlayer.
	self showNoPalette.
	aViewer :=  StandardViewer new initializeFor: aPlayer barHeight: 0.
	aViewer enforceTileColorPolicy.
	self showNoPalette.
	currentPage ifNotNil: [currentPage delete].
	self addMorphBack: (currentPage := aViewer beSticky).
	self snapToEdgeIfAppropriate.
	tabsMorph highlightTab: nil.
	self visible: true.
	oldOwner addMorphFront: self.
	self world startSteppingSubmorphsOf: aViewer.
	self layoutChanged