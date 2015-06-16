slots-kernel
categoriesForVocabulary: aVocabulary
	"Answer a list of categories appropriate to the receiver and its costumes, in the given Vocabulary"

	| aList |
	self hasCostumeThatIsAWorld
		ifTrue:
			[aList := self categoriesForWorld]
		ifFalse:
			[aList := OrderedCollection new.
			self slotNames ifNotEmpty:
				[aList add: ScriptingSystem nameForInstanceVariablesCategory].
			aList addAll: costume categoriesForViewer].
	aVocabulary addCustomCategoriesTo: aList.
	aList remove: ScriptingSystem nameForScriptsCategory ifAbsent: [].
	aList add: ScriptingSystem nameForScriptsCategory after: aList first.
	^ aList