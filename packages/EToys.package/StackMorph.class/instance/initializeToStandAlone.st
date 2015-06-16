parts bin
initializeToStandAlone
	
	self initialize.
	self pageSize: (480 @ 320); color: (Color gray: 0.7).
	self borderWidth: 1; borderColor: Color black.
	self currentPage extent: self pageSize.
	self showPageControls: self fullControlSpecs.
	^ self

"StackMorph initializedInstance openInHand"