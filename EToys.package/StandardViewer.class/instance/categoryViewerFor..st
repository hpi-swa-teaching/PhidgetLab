categories
categoryViewerFor: categoryInfo 
	"Answer a category viewer for the given category info"

	| aViewer |
	aViewer := ((categoryInfo isCollection) 
				and: [categoryInfo first == #search]) 
					ifFalse: [CategoryViewer new]
					ifTrue: [SearchingViewer new].
	aViewer initializeFor: scriptedPlayer categoryChoice: categoryInfo.
	^aViewer