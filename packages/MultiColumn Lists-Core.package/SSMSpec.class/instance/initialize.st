initialize-release
initialize
	colorSelector := nil.
	ssmColSpecs := OrderedCollection new.
	headerLocked := true.
	headerShown := true.
	currentFilter := OrderedCollection new.
	currentSort := nil.
	currentRawList := nil.
	showScreen := OrderedCollection new.
	backPointers _ nil.