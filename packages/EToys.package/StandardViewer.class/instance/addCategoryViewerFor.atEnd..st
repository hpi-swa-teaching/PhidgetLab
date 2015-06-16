categories
addCategoryViewerFor: categoryInfo atEnd: atEnd
	"Add a category viewer for the given category info.  If atEnd is true, add it at the end, else add it just after the header morph"

	| aViewer |
	aViewer := self categoryViewerFor: categoryInfo.
	atEnd
		ifTrue:
			[self addMorphBack: aViewer]
		ifFalse:
			[self addMorph: aViewer after: submorphs first].
	aViewer establishContents.
	self world ifNotNil: [self world startSteppingSubmorphsOf: aViewer].
	self fitFlap