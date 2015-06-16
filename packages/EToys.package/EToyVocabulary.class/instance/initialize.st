initialization
initialize
	"Initialize the receiver (automatically called when instances are created via 'new')"

	| classes categorySymbols |
	super initialize.
	self vocabularyName: #eToy.
	self documentation: '"EToy" is a vocabulary that provides the equivalent of the 1997-2000 etoy prototype'.
	categorySymbols := Set new.
	classes := self class morphClassesDeclaringViewerAdditions.
	classes do:
		[:aMorphClass | categorySymbols addAll: aMorphClass unfilteredCategoriesForViewer].
	self addCustomCategoriesTo: categorySymbols.  "For benefit, e.g., of EToyVectorVocabulary"

	categorySymbols asOrderedCollection do:
		[:aCategorySymbol | | selectors aMethodCategory |
			aMethodCategory := ElementCategory new categoryName: aCategorySymbol.
			selectors := Set new.
			classes do:
				[:aMorphClass |
					 (aMorphClass additionsToViewerCategory: aCategorySymbol) do:
						[:anElement | | selector aMethodInterface |
						aMethodInterface := self methodInterfaceFrom: anElement.
						selectors add: (selector := aMethodInterface selector).
						(methodInterfaces includesKey: selector) ifFalse:
							[methodInterfaces at: selector put: aMethodInterface].
						self flag: #deferred.
						"NB at present, the *setter* does not get its own method interface.  Need to revisit"].

			(selectors copyWithout: #unused) asSortedArray do:
				[:aSelector |
					aMethodCategory elementAt: aSelector put: (methodInterfaces at: aSelector)]].
				 
			self addCategory: aMethodCategory].

	self addCategoryNamed: ScriptingSystem nameForInstanceVariablesCategory.
	self addCategoryNamed: ScriptingSystem nameForScriptsCategory.
	self setCategoryDocumentationStrings.
	(self respondsTo: #applyMasterOrdering)
		ifTrue: [ self applyMasterOrdering ].