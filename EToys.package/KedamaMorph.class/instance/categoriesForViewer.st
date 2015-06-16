etoys
categoriesForViewer
	"Answer a list of symbols representing the categories to offer in the viewer, in order"
	^ super categoriesForViewer.
"
	| aList |
	aList := OrderedCollection new.
	aList addAllFirstUnlessAlreadyPresent: (self class additionsToViewerCategories collect:
				[:categorySpec | categorySpec first]).
	^ aList
"