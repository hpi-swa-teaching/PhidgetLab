submorphs-accessing
allNonSubmorphMorphs
	"Return a collection containing all morphs in this morph which are not currently in the submorph containment hierarchy.  Especially the non-showing pages in BookMorphs."

	| coll |
	coll := OrderedCollection new.
	self privateCards do: [:cd | 
		cd privateMorphs ifNotNil: [coll addAll: cd privateMorphs]].
	^ coll