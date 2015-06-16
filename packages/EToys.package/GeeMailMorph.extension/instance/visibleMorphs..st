*Etoys-customevents-access
visibleMorphs: morphs
	"Answer a collection of morphs that were visible as of the last step"
	self setProperty: #visibleMorphs toValue: (WeakArray withAll: morphs)