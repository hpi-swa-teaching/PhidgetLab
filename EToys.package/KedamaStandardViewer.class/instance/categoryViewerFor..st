categories
categoryViewerFor: categoryInfo 
	"Answer a category viewer for the given category info"

	| aViewer |
	aViewer := ((categoryInfo isCollection) 
				and: [categoryInfo first == #search]) 
					ifFalse: [KedamaCategoryViewer new]
					ifTrue: [KedamaWhoSearchingViewer new].
	aViewer initializeFor: scriptedPlayer categoryChoice: categoryInfo.
	(aViewer isMemberOf: KedamaWhoSearchingViewer) ifTrue: [^ aViewer].
	restrictedWho = 0
		ifTrue: [aViewer replaceTargetWith: scriptedPlayer]
		ifFalse: [aViewer replaceTargetWith: stub].
	^aViewer.
