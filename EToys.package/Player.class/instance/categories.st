slots-kernel
categories
	"Answer a list of categories appropriate to the the receiver and its costumes"

	| aList |
	(self hasCostumeThatIsAWorld)
		ifTrue:	[^ self categoriesForWorld].

	aList := OrderedCollection new.
	self slotNames notEmpty ifTrue:
		[aList add: ScriptingSystem nameForInstanceVariablesCategory].
	aList addAll: costume categoriesForViewer.
	aList remove: ScriptingSystem nameForScriptsCategory ifAbsent: [].
	aList add: ScriptingSystem nameForScriptsCategory after: aList first.
	^ aList