*Etoys-customevents-access
visibleMorphs
	"Answer a collection of morphs that were visible as of the last step"
	^Array withAll: (self valueOfProperty: #visibleMorphs ifAbsentPut: [ WeakArray new ]).