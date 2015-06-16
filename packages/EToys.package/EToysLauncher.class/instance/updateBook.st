actions
updateBook
	| entries fileNames aBookMorph currentPage count base |
	self removeAllMorphs.
	entries := self sortedProjectFiles.
	fileNames := entries
				collect: [:each | each first].
	aBookMorph := BookMorph new.
	aBookMorph extent: self extent.
	self addMorph: aBookMorph.
	currentPage := aBookMorph currentPage..
	self setupBookPage: currentPage.
	count := 0.
	fileNames
		do: [:each |
			currentPage addMorphBack: (self buildButtonFor: each).
			count := count + 1.
			(count \\ 10 = 0) ifTrue: [
				"base := Morph new.
				base width: 300; color: Color transparent; borderWidth: 0.
				currentPage addMorphBack: base.
				currentPage addMorphBack: (RectangleMorph new extent: 100@75; color: Color transparent; borderWidth: 0).
				currentPage addMorphBack: (StringMorph new font: Preferences standardEToysFont; contents: 'more...')."
				currentPage := aBookMorph insertPageSilentlyAtEnd.
				self setupBookPage: currentPage.
			]].
	aBookMorph evenFewerPageControlsAllowDragging: false..
