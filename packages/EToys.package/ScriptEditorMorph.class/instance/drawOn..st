drawing
drawOn: aCanvas
	"may need to unhibernate the script lazily here."

	(Preferences universalTiles and: [self submorphs size < 2])
		ifTrue:
			[WorldState addDeferredUIMessage: [self unhibernate]].

	^ super drawOn: aCanvas